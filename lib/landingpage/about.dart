import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Card(
              color: Colors.lightBlue[50],
              elevation: 20,
              child: Column(
                children: [
                  Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/niavsbg.jpeg?alt=media&token=95e2ed9a-8fdf-42d9-9aeb-de44f5fa6da5',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nivas Reddy',
                    style: TextStyle(
                      fontFamily: 'WorkSans-Bold.ttf',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            height: 400,
            width: 300,
          ),
          Container(
            child: Card(
              color: Colors.lightBlue[50],
              elevation: 20,
              child: Column(
                children: [
                  Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/About.jpg?alt=media&token=1e7662ff-aae2-446a-bef8-895bc1b77458',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Anurag Tekale',
                    style: TextStyle(
                      fontFamily: 'WorkSans-Bold.ttf',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            height: 400,
            width: 300,
          ),
        ],
      ),
      margin: EdgeInsets.all(125),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(50),
      ),
      height: 750,
      width: 500,
    );
  }
}
