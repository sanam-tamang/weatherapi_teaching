// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeatherModel {
  final String country;
  final String region;
  final double celcious;

  WeatherModel({
    required this.country,
    required this.region,
    required this.celcious,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      country: json['location']['country'],
      region: json['location']['region'],
      celcious: json['current']['temp_c'],
    );
  }
}
