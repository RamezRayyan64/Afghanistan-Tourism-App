import 'package:geolocator/geolocator.dart';

late Position currentPosition;

Future<void> getCurrentPosition() async {
  final hasPermission = await handleLocationPermission();
  if (!hasPermission) return;
  await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
      .then((Position position) {
    currentPosition = position;
  }).catchError((e) {});
}

Future<bool> handleLocationPermission() async {
  bool serviceEnabled;
  LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    print('location is not enabled');
    return false;
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      print('location permission denied');
      return false;
    }
  }
  if (permission == LocationPermission.deniedForever) {
    print('location permission denied forever');
    return false;
  }
  return true;
}
