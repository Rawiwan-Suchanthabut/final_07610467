import 'package:final_07610467/weather_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, dynamic> weatherData = {
    "city": "Bangkok",
    "country": "Thailand",
    "lastUpdated": "2023-10-26 09:00",
    "tempC": 29,
    "tempF": 84.2,
    "feelsLikeC": 34.7,
    "feelsLikeF": 94.4,
    "windKph": 13,
    "windMph": 8.1,
    "humidity": 84,
    "uv": 6,
    "condition": {
      "text": "Partly cloudy",
      "icon": "https://cdn.weatherapi.com/weather/128x128/day/116.png",
      "code": 1003
    }
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
        ),
        body: WeatherWidget(
          city: weatherData["city"],
          country: weatherData["country"],
          lastUpdated: weatherData["lastUpdated"],
          tempC: weatherData["tempC"],
          tempF: weatherData["tempF"],
          feelsLikeC: weatherData["feelsLikeC"],
          feelsLikeF: weatherData["feelsLikeF"],
          windKph: weatherData["windKph"],
          windMph: weatherData["windMph"],
          humidity: weatherData["humidity"],
          uv: weatherData["uv"],
          conditionText: weatherData["condition"]["text"],
          conditionIconUrl: weatherData["condition"]["icon"],
        ),
      ),
    );
  }
}



