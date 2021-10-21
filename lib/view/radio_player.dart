import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/colors.dart';
import 'widgets/appbar.dart';
import 'widgets/cards.dart';
import 'widgets/next_play_previous.dart';
import 'widgets/sidebar.dart';
import 'widgets/volume_slider.dart';

class MainRadio extends StatelessWidget {
  const MainRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Container(
            color: Constants.deepBlue,
            width: size.width * 0.8,
            height: size.height,
            child: Column(
              children: const [
                MyAppBar(),
                CardRow(),
                ControllButtons(),
                VolumeSlider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
