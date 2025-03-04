void main() {

  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  List<double> temps = [];

  temps.add(weatherData[0]['temp'] ?? 0.00);
  temps.add(weatherData[1]['temp'] ?? 0.00);
  temps.add(weatherData[2]['temp'] ?? 0.00);

  double? avgTemp = (temps[0] + temps[1] + temps[2]) / 3;
  print('Durchschnittstemperatur: ${avgTemp.toStringAsFixed(2)}');

  List<double> rains = [];

  rains.add(weatherData[0]['rain'] ?? 0.00);
  rains.add(weatherData[1]['rain'] ?? 0.00);
  rains.add(weatherData[2]['rain'] ?? 0.00);

  double? avgRain = (rains[0] + rains[1] + rains[2]) / 3;
  print('Durchschnittsregen: ${avgRain.toStringAsFixed(2)}');

  List<double> winds = [];

  winds.add(weatherData[0]['wind'] ?? 0.00);
  winds.add(weatherData[1]['wind'] ?? 0.00);
  winds.add(weatherData[2]['wind'] ?? 0.00);

  double? avgWind = (winds[0] + winds[1] + winds[2]) / 3;
  print('Durchschnittswind: ${avgWind.toStringAsFixed(2)}');
}