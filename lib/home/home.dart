import 'package:flutter/material.dart';
import 'package:hackweek_4/home/widgets/MiddleContainer/middleColumn.dart';
import 'package:hackweek_4/home/widgets/leftContainer/leftColumn.dart';
import 'package:hackweek_4/home/widgets/navigation.dart';
import 'package:hackweek_4/home/widgets/rightContainer/rightColumn.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Column(
          children: [
            NavigationBar(),
            Row(
              children: [LeftColumn(), MiddleContainer(), RightColumn()],
            )
          ],
        ),
      ),
    );
  }
}
