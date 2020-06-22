import 'package:flutter/material.dart';

class Features extends StatelessWidget {
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
                  SizedBox(height: 20),
                  Text(
                    'Upcoming Features',
                    style: TextStyle(
                      fontFamily: 'WorkSans-Bold.ttf',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/features-removebg-preview.png?alt=media&token=da5725dc-1e26-4833-98c2-17b160be518d',
                        height: 400,
                        width: 400,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Posting Images/Videos',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Likes and Comments',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Simple ChatBot',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '                   Discover Page\n    (Get Info about hackathons, Events)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            height: 600,
            width: 800,
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 150, right: 150, top: 50, bottom: 50),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(50),
      ),
      height: 950,
      width: 250,
    );
  }
}
