import 'package:flutter/material.dart';
import 'package:samples_flutter/demo2/models/weather.dart';
import 'package:samples_flutter/demo2/services/weather_network_service.dart';

import '../widgets/weather_data_widget.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Youtube, to Flutter Explained!"),
      ),
      body: FutureBuilder(
        future: WeatherNetworkService.getWeatherData("Christchurch"),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            //success
            Weather weather = snapshot.data;

            return WeatherDataWidget(
              weather: weather,
            );
          } else if (snapshot.hasError) {
            //error
            return const Center(
              child: Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 120.0,
              ),
            );
          } else {
            //loading
            return const LinearProgressIndicator(
              value: null,
            );
          }
        },
      ),
    );
  }
}
