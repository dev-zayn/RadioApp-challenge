import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/colors.dart';
import 'package:flutter_svg/svg.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Constants.darkBlue,
      height: size.height,
      width: size.width * 0.2,
      child: RotatedBox(
        quarterTurns: 3,
        child: Stack(
          children: [
            Positioned(
              right: size.height * 0.025,
              top: size.width * 0.05,
              width: size.height * 0.1,
              height: size.width * 0.08,
              child: RotatedBox(
                  quarterTurns: 1,
                  child: SvgPicture.asset('assets/play_circle.svg')),
            ),
            Positioned(
              right: size.height * 0.23,
              top: size.width * 0.07,
              width: size.height * 0.12,
              height: size.width * 0.09,
              child: const Text(
                'All Stations',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Positioned(
              right: size.height * 0.43,
              top: size.width * 0.07,
              width: size.height * 0.1,
              height: size.width * 0.09,
              child: const Text(
                'Favorites',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Positioned(
              right: size.height * 0.63,
              top: size.width * 0.05,
              width: size.height * 0.13,
              height: size.width * 0.09,
              child: Row(
                children: const [
                  Icon(
                    Icons.circle,
                    size: 17,
                    color: Color(0xff05D8E8),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
