import 'package:flutter/material.dart';

import 'leftCards.dart';

class LeftColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 70,
      width: MediaQuery.of(context).size.width / 5,
      child: ListView(
        children: leftCards,
      ),
    );
  }
}
