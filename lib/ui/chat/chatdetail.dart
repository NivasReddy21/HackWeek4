import '../../services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();

  String message;
  String userName;

  Future<void> setUserName() async {
    var user = await FirebaseAuthService().currentUser();
    setState(() {
      userName = user.displayName;
    });
  }

  Future<void> callBack() async {
    if (messageController.text.length > 0) {
      await Firestore.instance.collection('chat').add({
        'text': messageController.text,
        'from': userName,
        'time': DateTime.now().millisecondsSinceEpoch * -1
      });
      messageController.clear();
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(
          milliseconds: 300,
        ),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    setUserName();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        StreamBuilder(
          stream:
              Firestore.instance.collection('chat').orderBy('time').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<DocumentSnapshot> docs = snapshot.data.documents;
              List<Widget> messages = docs
                  .map((doc) => Message(
                        from: doc.data['from'],
                        text: doc.data['text'],
                        me: userName == doc.data['from'],
                      ))
                  .toList();

              return Padding(
                padding:
                    const EdgeInsets.only(bottom: 130, left: 15, right: 15),
                child: ListView(
                  reverse: true,
                  controller: scrollController,
                  children: [
                    ...messages,
                  ],
                ),
              );
            }
          },
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 16, bottom: 10),
            height: 80,
            width: double.infinity,
            color: Colors.grey[200].withOpacity(0.22),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextField(
                    onSubmitted: (value) => callBack(),
                    controller: messageController,
                    style: TextStyle(
                      color: Colors.grey[100],
                    ),
                    cursorColor: Colors.grey[100],
                    decoration: InputDecoration(
                      hintText: "Type message...",
                      hintStyle: TextStyle(
                        color: Colors.grey[100],
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.only(right: 30, bottom: 50),
            child: FloatingActionButton(
              onPressed: () {
                callBack();
              },
              child: Icon(
                Icons.send,
                color: Colors.white,
              ),
              backgroundColor: Colors.indigo,
              elevation: 0,
            ),
          ),
        )
      ],
    );
  }
}

class Message extends StatelessWidget {
  final String from;
  final String text;

  final bool me;

  const Message({Key key, this.from, this.text, this.me}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
            me ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            from,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Material(
            color: me ? Colors.teal : Colors.purple[200],
            borderRadius: BorderRadius.circular(10),
            elevation: 6,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
