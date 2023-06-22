class TouristicCityModel {
  late final String _touristicCityName;

  TouristicCityModel();

  TouristicCityModel.fromMap(Map<dynamic, dynamic> json) {
    _touristicCityName = json['AFN'];
  }

  String getTouristicCityName() => _touristicCityName;
}
