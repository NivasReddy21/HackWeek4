import 'package:flutter/material.dart';
import 'package:hackweek_4/landingpage/Container.dart';
import 'package:hackweek_4/landingpage/Footer.dart';
import 'package:hackweek_4/landingpage/header.dart';
import 'package:hackweek_4/landingpage/infosec.dart';
import 'package:hackweek_4/landingpage/thirdsec.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Headersection(),
            SizedBox(height: 225.0),
            Infosec(),
            SizedBox(height: 30.0),
            Thirdsection(),
            SizedBox(height: 30.0),
            Containersection(),
            // SizedBox(height: 30.0),
            // _insight(),
            // SizedBox(height: 30.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Image.asset('assets/imgs/', height: 500.0),
            //     Image.asset('assets/imgs/', height: 500.0)
            //   ],
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // _pricingSection(),
            SizedBox(
              height: 300.0,
            ),
            Footersection(),
          ],
        ),
      ),
    );
  }
}
