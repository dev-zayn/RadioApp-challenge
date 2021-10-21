import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardRow extends StatelessWidget {
  const CardRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyCards(
                size: size,
                cardColor: Constants.pink,
                borderColor: Constants.pink,
                textColor: Colors.white,
                isPlaying: true,
                waveFrequency: 90.5,
                name: 'Divelement',
                waveShape: 'wave1'),
            MyCards(
                size: size,
                cardColor: Constants.deepBlue,
                borderColor: Constants.greyBlue,
                textColor: Constants.greyBlue,
                isPlaying: false,
                waveFrequency: 94.3,
                name: 'Diegoveloper',
                waveShape: 'wave2'),
          ],
        ),
        SizedBox(height: size.height*0.025),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyCards(
                size: size,
                cardColor: Constants.deepBlue,
                borderColor: Constants.greyBlue,
                textColor: Constants.greyBlue,
                isPlaying: false,
                waveFrequency: 98.5,
                name: 'Divelement',
                waveShape: 'wave3'),
            MyCards(
                size: size,
                cardColor: Constants.deepBlue,
                borderColor: Constants.greyBlue,
                textColor: Constants.greyBlue,
                isPlaying: false,
                waveFrequency: 91.0,
                name: 'Diegoveloper',
                waveShape: 'wave4'),
          ],
        ),
        SizedBox(height: size.height*0.025),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyCards(
                size: size,
                cardColor: Constants.deepBlue,
                borderColor: Constants.greyBlue,
                textColor: Constants.greyBlue,
                isPlaying: false,
                waveFrequency: 104.2,
                name: 'Divelement',
                waveShape: 'wave5'),
            MyCards(
                size: size,
                cardColor: Constants.deepBlue,
                borderColor: Constants.greyBlue,
                textColor: Constants.greyBlue,
                isPlaying: false,
                waveFrequency: 92.7,
                name: 'Diegoveloper',
                waveShape: 'wave6'),
          ],
        ),
        SizedBox(height: size.height*0.025),
      ],
    );
  }
}

MyCards({
  required Size size,
  required Color cardColor,
  required Color borderColor,
  required Color textColor,
  required bool isPlaying,
  required double waveFrequency,
  required String name,
  required String waveShape,
}) {
  return InkWell(
    onTap: () {
      isPlaying = !isPlaying;
    },
    child: Container(
      padding: EdgeInsets.all(size.width * 0.025),
      width: size.width * 0.33,
      height: size.width * 0.33,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: borderColor, // red as border color
        ),
        borderRadius: BorderRadius.circular(15), // radius of 10
        color: cardColor,
      ),
      child: Column(
        children: [
          isPlaying
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Playing',
                      style: TextStyle(color: Constants.violet),
                    ),
                    SvgPicture.asset('assets/heart_filled.svg')
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [SvgPicture.asset('assets/heart_outlined.svg')],
                ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            '$waveFrequency',
            style: TextStyle(fontSize: size.width * 0.07,fontWeight: FontWeight.w800, color: textColor),
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: size.width * 0.035,
                fontWeight: FontWeight.w300,
                color: textColor),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SvgPicture.asset('assets/$waveShape.svg'),
        ],
      ),
    ),
  );
}
