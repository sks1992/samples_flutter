import 'package:flutter/material.dart';

import '../models/weather.dart';

class WeatherDataWidget extends StatelessWidget {
  final Weather weather;

  const WeatherDataWidget({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            weather.name,
            style: const TextStyle(
              fontSize: 64,
            ),
          ),
          Text(
            "${weather.temperature.toStringAsFixed(2)}°C",
            style: const TextStyle(fontSize: 64),
          ),
          weather.temperatureFeeling < 5
              ? const Icon(
                  Icons.cloud,
                  color: Colors.grey,
                  size: 72,
                )
              : const Icon(
                  Icons.wb_sunny,
                  color: Colors.yellow,
                  size: 72,
                )
        ],
      ),
    );
  }
}
