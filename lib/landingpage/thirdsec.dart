import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Thirdsection extends StatelessWidget {
  const Thirdsection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: NeumorphicText(
            'A Single place for all the college Updates',
            style: NeumorphicStyle(
              depth: 1,
              color: Colors.black,
            ),
            textStyle: NeumorphicTextStyle(
              fontFamily: 'WorkSans-Bold.ttf',
              fontSize: 50,
              fontWeight: FontWeight.bold,
              wordSpacing: 1.0,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        // NeumorphicText(
        //   'Fusion provides all the features needed of Social-Media..\nFirst Social Media Website of',
        //   style: NeumorphicStyle(
        //     depth: 1,
        //     color: Colors.grey[500],
        //   ),
        //   textStyle: NeumorphicTextStyle(
        //     fontFamily: 'WorkSans-Regular.ttf',
        //     fontSize: 25,
        //     fontWeight: FontWeight.w400,
        //     wordSpacing: 1.0,
        //   ),
        // ),
      ],
    );
  }
}