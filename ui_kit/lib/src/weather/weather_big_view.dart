import 'package:flutter/material.dart';
import 'package:ui_kit/src/resources/app_colors.dart';
import 'package:weather_icons/weather_icons.dart';

class BigWeatherWidget extends StatelessWidget {
  const BigWeatherWidget({
    required this.temperature,
    required this.day,
    required this.month,
    required this.year,
    this.description = '',
    this.address = '',
    this.weatherIcon = WeatherIcons.na,
    Key? key,
  }) : super(key: key);

  final double temperature;
  final int day;
  final int month;
  final int year;
  final IconData weatherIcon;
  final String description;
  final String address;

  Color _getTemperatureColor(double t) {
/*    if (t < 0) {
      return AppColors.blue;
    } else if (t < 15) {
      return AppColors.green;
    } else if (t < 25) {
      return AppColors.orange;
    }*/

    return AppColors.color2;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.color3;
    final contentColor = AppColors.color2;

    return DecoratedBox(
      decoration: BoxDecoration(color: backgroundColor),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        child: Center(
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
                      child: BoxedIcon(
                        weatherIcon,
                        size: 100.0,
                        color: weatherIcon == WeatherIcons.na
                            ? contentColor
                            : _getTemperatureColor(temperature),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Date: $day/$month/$year',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: contentColor,
                          ),
                        ),
                        Row(
                          children: [
                            BoxedIcon(
                              WeatherIcons.thermometer,
                              size: 20.0,
                              color: _getTemperatureColor(temperature),
                            ),
                            Text(
                              '${temperature.round()}',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: contentColor,
                              ),
                            ),
                            BoxedIcon(
                              WeatherIcons.celsius,
                              size: 30.0,
                              color: contentColor,
                            )
                          ],
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 18,
                            color: contentColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  address,
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: contentColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
