import 'package:flutter/material.dart';

enum MessageType {
  Receiver,
  Sender,
}

class ChatMessage {
  String message;
  MessageType type;
  ChatMessage({@required this.message, @required this.type});
}
