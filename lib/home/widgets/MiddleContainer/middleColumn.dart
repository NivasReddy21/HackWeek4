import 'package:flutter/material.dart';

import 'middleCards.dart';

class MiddleContainer extends StatefulWidget {
  @override
  _MiddleContainerState createState() => _MiddleContainerState();
}

class _MiddleContainerState extends State<MiddleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 70,
        width: MediaQuery.of(context).size.width / 1.7,
        child: ListView(
          children: middleFunc(),
        ));
  }
}
