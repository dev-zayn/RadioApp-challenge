import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.amber,
      margin: EdgeInsets.fromLTRB(size.width*0.03,size.height*0.02,size.width*0.01,size.height*0.025),
      height: size.height * 0.15,
      width: size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Text(
                'Hello ',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text('Miau',
                  style: TextStyle(
                      color: Constants.pink,
                      fontSize: 22,
                      fontWeight: FontWeight.w700)),
              Expanded(child: Container()),
              Image.asset('assets/profile.png'),
            ],
          ),
          const Text(
            'Popular',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
