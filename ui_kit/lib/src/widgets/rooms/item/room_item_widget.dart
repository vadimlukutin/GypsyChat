import 'package:flutter/material.dart';
import 'package:ui_kit/src/resources/app_colors.dart';
import 'package:ui_kit/src/resources/text_styles.dart';

class RoomItemWidget extends StatelessWidget {
  const RoomItemWidget({
    required this.name,
    required this.text,
    required this.datetime,
    required this.username,
    required this.avatarLetter,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String name;
  final String text;
  final String username;
  final String datetime;
  final String avatarLetter;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.color3;

    return Padding(
      padding: EdgeInsets.only(top: 5.0, right: 5.0, left: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: DecoratedBox(
                      child: Center(
                        child: Text(
                          avatarLetter,
                          style: AppTextStyles.color2S26H120W700,
                        ),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.orangeAccent,
                              Colors.red,
                              Colors.redAccent
                              //add more colors for gradient
                            ],
                            begin: Alignment.topLeft, //begin of the gradient color
                            end: Alignment.bottomRight, //end of the gradient color
                            stops: [0, 0.2, 0.5, 0.8] //stops for individual color
                            //set the stops number equal to numbers of color
                            ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            name,
                            style: AppTextStyles.color2S18H120W700,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            text,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.color2S16H120W500,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '$username $datetime',
                            style: AppTextStyles.color2S14H120W500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
