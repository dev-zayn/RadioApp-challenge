import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexagon/hexagon.dart';

class ControllButtons extends StatelessWidget {
  const ControllButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height*0.04),
      width: size.width*0.8,
      height: size.height*0.125,
      child: Stack(
        children: [
          Positioned(
              width: size.width * 0.25,
              height: size.width * 0.25,
              right: size.width*0.27,
              bottom: size.height*-0.01+8,
              child:
              HexagonWidget(
                type: HexagonType.POINTY,
                color: Constants.pink,
                width: size.width * 0.1,
                height: size.height * 0.1,
                cornerRadius: 20,
                child: Center(child: Icon(Icons.play_arrow_rounded,size: size.width*0.1,color: Colors.white,),),
              )
          ),
          Positioned(
              width: size.width*0.2,
              height: size.height*0.2,
              right: size.width*0.295,
              bottom: size.height*-0.037,
              child:SvgPicture.asset('assets/hex_line_b.svg',)
          ),
          Positioned(
              width: size.width*0.225,
              height: size.height*0.225,
              right: size.width*0.283,
              bottom: size.height*-0.05,
              child:SvgPicture.asset('assets/hex_line_p.svg',)
          ),
          Positioned(
              width: size.width * 0.25,
              height: size.width * 0.25,
              right: size.width*0.5,
              bottom: size.height*-0.002,
              child:
              HexagonWidget(
                type: HexagonType.POINTY,
                color: Constants.grey,
                width: size.width * 0.15,
                height: size.width * 0.15,
                cornerRadius: 20,
                child: Center(child: Icon(Icons.arrow_left_rounded,size: size.width*0.15,color: Colors.white,),),
              )
          ),
          Positioned(
              width: size.width * 0.25,
              height: size.width * 0.25,
              right: size.width*0.05,
              bottom: size.height*-0.002,
              child:
              HexagonWidget(
                type: HexagonType.POINTY,
                color: Constants.grey,
                width: size.width * 0.15,
                height: size.width * 0.15,
                cornerRadius: 20,
                child: Center(child: Icon(Icons.arrow_right_rounded,size: size.width*0.15,color: Colors.white,),),
              )
          ),
        ],
      ),

    );
  }
}
