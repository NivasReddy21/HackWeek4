import '../services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String currentUserName = 'Loading...';
  String photoUrl = '';

  Future<String> userName() async {
    var user = await FirebaseAuthService().currentUser();
    setState(() {
      currentUserName = user.displayName;
      photoUrl = user.photoUrl;
    });
    return user.photoUrl;
  }

  @override
  void initState() {
    super.initState();
    userName();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          color: Colors.blueGrey[200],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/mecmanagementapp.appspot.com/o/default.jpg?alt=media&token=4fd75b60-ebe0-48d6-b31d-70913ce0f5ef',
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'MEC CONNECT',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(photoUrl),
                radius: 16,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                currentUserName,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          buttons(icon: Icons.home, name: 'Home'),
          SizedBox(
            height: 15,
          ),
          buttons(icon: Icons.person_outline, name: 'Profile'),
          SizedBox(
            height: 15,
          ),
          buttons(icon: Icons.info_outline, name: 'About'),
          SizedBox(
            height: 15,
          ),
          buttons(icon: Icons.settings, name: 'Settings'),
          SizedBox(
            height: 300,
          ),
          buttons(
            icon: Icons.exit_to_app,
            name: 'Logout',
            onPress: () {
              print('LogOut');
              context.read<FirebaseAuthService>().signOut(context);
            },
          ),
        ],
      ),
    );
  }

  Widget buttons({IconData icon, String name, Function onPress}) {
    return MaterialButton(
      onPressed: onPress,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey[900],
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
