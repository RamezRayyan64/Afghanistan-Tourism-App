import 'dart:async';

import 'package:afghanistan_tourism_app/packages/geolocator/geolocator.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/drawer_screens/widgets/top_screen_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyLocationScreen extends StatefulWidget {
  const MyLocationScreen({
    super.key,
  });

  @override
  State<MyLocationScreen> createState() => _MyLocationScreenState();
}

class _MyLocationScreenState extends State<MyLocationScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopScreenTextWidget(
          text: 'My Location',
        ),
        SizedBox(
          height: 710,
          child: GoogleMap(
            myLocationEnabled: true,
            mapType: MapType.hybrid,
            initialCameraPosition: CameraPosition(
              target:
                  LatLng(currentPosition.latitude, currentPosition.longitude),
              zoom: 17.5,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ],
    );
  }
}
