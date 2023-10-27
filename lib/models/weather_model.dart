class Weather {
  final String cityName;
  final double temperature;
  final String mainCodition;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCodition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        cityName: json['name'],
        temperature: json['main']['temp'].toDouble(),
        mainCodition: json['weather'][0]['main'],
        );
  }
}
