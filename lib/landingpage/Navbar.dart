import 'package:flutter/material.dart';
import 'package:hackweek_4/landingpage/about.dart';
import 'package:hackweek_4/ui/Authentication/pages/google_sign_in.dart';

import 'features.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/logo.jpg?alt=media&token=305ee197-ba3c-49b4-a56c-e5b57fe251ce',
                      width: 80,
                      height: 80,
                    ),
                    Text(
                      'Fusion',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'WorkSans-Bold.ttf',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 40.0),
              FlatButton(
                hoverColor: Colors.red[300],
                onPressed: () {
                  showDialog(context: context, builder: (_) => About());
                },
                child: Text(
                  'About Us',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'WorkSans-SemiBold.ttf',
                      fontSize: 18),
                ),
              ),
              SizedBox(width: 40.0),
              FlatButton(
                hoverColor: Colors.red[300],
                onPressed: () =>
                    showDialog(context: context, builder: (_) => Features()),
                child: Text(
                  'Features',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'WorkSans-SemiBold.ttf',
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(width: 40.0),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GoogleSignInPage(),
                    ),
                  );
                },
                child: Container(
                  height: 35.0,
                  width: 100.0,
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'WorkSans-SemiBold.ttf',
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Color(0xFFFB4C47), width: 1.5)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
