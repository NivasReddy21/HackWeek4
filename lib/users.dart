import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: StreamBuilder(
          stream: Firestore.instance.collection('users').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<DocumentSnapshot> docs = snapshot.data.documents;
            List<Widget> users = docs
                .map((doc) => UserWidget(
                      userName: doc.data['userName'],
                      photoUrl: doc.data['photoUrl'],
                    ))
                .toList();
            return ListView(
              children: [
                ...users,
              ],
            );
          },
        ));
  }
}

class UserWidget extends StatelessWidget {
  final String userName;
  final String photoUrl;

  const UserWidget({Key key, this.userName, this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
        left: 15,
        bottom: 15,
      ),
      margin: EdgeInsets.only(top: 5),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: NetworkImage(photoUrl)),
          SizedBox(
            width: 10,
          ),
          Text(
            userName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
