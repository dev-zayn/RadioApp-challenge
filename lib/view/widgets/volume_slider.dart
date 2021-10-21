import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/colors.dart';

class VolumeSlider extends StatelessWidget {
  const VolumeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height*0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.volume_up_outlined,
            color: Constants.greyBlue,
          ),
          Stack(
            children: [
              Positioned(
                  child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10),color: Constants.greyBlue,),
                width: size.width * 0.5,
                height: size.height * 0.005,
              )),
              Positioned(
                  child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10),color: Constants.cyan,),
                width: size.width * 0.35,
                height: size.height * 0.005,
              )),
            ],
          ),const Text('65%',style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
