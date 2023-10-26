import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  final String city;
  final String country;
  final String lastUpdated;
  final double tempC;
  final double tempF;
  final double feelsLikeC;
  final double feelsLikeF;
  final double windKph;
  final double windMph;
  final int humidity;
  final int uv;
  final String conditionText;
  final String conditionIconUrl;

  WeatherWidget({
    required this.city,
    required this.country,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.feelsLikeC,
    required this.feelsLikeF,
    required this.windKph,
    required this.windMph,
    required this.humidity,
    required this.uv,
    required this.conditionText,
    required this.conditionIconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$city, $country',
            style: TextStyle(
              fontSize: 50, // ปรับขนาดตามที่คุณต้องการ
            ),
          ),
          SizedBox(height: 15),
          Text(
            '$lastUpdated',
            style: TextStyle(
              fontSize: 20, // ปรับขนาดตามที่คุณต้องการ
            ),
          ),
          SizedBox(height: 15),
          CachedNetworkImage(
            imageUrl: conditionIconUrl,
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
          Text(
            'Condition: $conditionText',
            style: TextStyle(
              fontSize: 20, // ปรับขนาดตามที่คุณต้องการ
            ),
          ),
          SizedBox(height: 15),
          Text('Temperature: $tempC°C / $tempF°F'),
          Text('Feels Like: $feelsLikeC°C / $feelsLikeF°F'),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the items horizontally
            children: [
              Text('Wind: $windKph km/h / $windMph mph'),
              Icon(Icons.toys,
                  color: Colors
                      .green), // Use the toys icon as a placeholder for wind
            ],
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the items horizontally
            children: [
              Text('Humidity: $humidity%'),
              Icon(Icons.opacity,
                  color: Colors.blue), // Use the water drop icon for humidity
            ],
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the items horizontally
            children: [
              Text('UV Index: $uv'),
              Icon(Icons.wb_sunny,
                  color: Colors.orange), // Use the sun icon for UV index
            ],
          ),
        ],
      ),
    );
  }
}
