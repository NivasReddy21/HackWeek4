import '../widgets/google_signin.dart';
import 'package:flutter/material.dart';

class GoogleSignInPage extends StatefulWidget {
  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 600,
                width: 450,
                color: Colors.blue[300],
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/mecmanagementapp.appspot.com/o/hello.png?alt=media&token=802b25eb-2568-421a-b6ba-979c85f76b20',
                ),
              ),
              Container(
                height: 600,
                width: 450,
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                    ),
                    Text(
                      'Sign In With \n     Google',
                      style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    GoogleSignInButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
