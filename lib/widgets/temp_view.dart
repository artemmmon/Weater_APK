import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_apk/modals/weather_forecast_daily_one.dart';

class TempView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const TempView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data.list;
    var icon = forecastList[0].getIconUrl();
    var temp = forecastList[0].main.temp.toStringAsFixed(0);
    var description = forecastList[0].weather[0].description.toUpperCase();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            icon,
            scale: 0.7,
            color: Colors.black87,
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            children: <Widget>[
              Text(
                '$temp °С',
                style: TextStyle(
                  fontSize: 54.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                '$description',
                style: TextStyle(fontSize: 18.0, color: Colors.black87),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
