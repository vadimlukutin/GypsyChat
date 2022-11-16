import 'package:flutter/material.dart';
import 'package:ui_kit/src/resources/app_colors.dart';
import 'package:weather_icons/weather_icons.dart';

class SmallWeatherWidget extends StatelessWidget {
  const SmallWeatherWidget({
    required this.temperature,
    required this.day,
    required this.month,
    required this.year,
    this.weatherIcon = WeatherIcons.na,
    Key? key,
  }) : super(key: key);

  final double temperature;
  final int day;
  final int month;
  final int year;
  final IconData weatherIcon;

  Color _getTemperatureColor(double t) {
/*    if (t < 0) {
      return AppColors.blue;
    } else if (t < 15) {
      return AppColors.green;
    } else if (t < 25) {
      return AppColors.orange;
    }*/

    return AppColors.red;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.color3;
    final contentColor = AppColors.color2;

    return DecoratedBox(
      decoration: BoxDecoration(color: backgroundColor),
      child: Center(
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BoxedIcon(
                weatherIcon,
                size: 50.0,
                color: contentColor,
              ),
              UnconstrainedBox(
                child: Row(
                  children: [
                    BoxedIcon(
                      WeatherIcons.thermometer,
                      size: 10.0,
                      color: contentColor,
                    ),
                    Text(
                      '${temperature.round()}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: contentColor,
                      ),
                    ),
                    BoxedIcon(
                      WeatherIcons.celsius,
                      size: 22.0,
                      color: contentColor,
                    )
                  ],
                ),
              ),
              Text(
                '$day/$month/$year',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: contentColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
