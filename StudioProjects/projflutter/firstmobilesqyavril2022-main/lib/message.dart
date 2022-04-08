import 'package:flutter/material.dart';
import 'package:flutter_firebase/common/loading.dart';
import 'package:flutter_firebase/models/message.dart';
import 'package:intl/intl.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  final String userId;
  final bool isLastMessage;

  const MessageItem(
      {Key? key, required this.message, required this.userId, required this.isLastMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      userId == message.idFrom ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment:
          userId == message.idFrom ? MainAxisAlignment.end : MainAxisAlignment.start,
        ),
      ],
    );
  }

  Widget messageContainer() {
    return Container(
      child: Text(
        message.content,
        style: TextStyle(color: userId == message.idFrom ? Colors.black : Colors.white),
      ),
      padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      width: 200.0,
      decoration: BoxDecoration(
          color: userId == message.idFrom ? Colors.grey : Colors.blueGrey,
          borderRadius: BorderRadius.circular(8.0)),
      margin: EdgeInsets.only(bottom: 10.0, right: 10.0, left: 10.0),
    );
  }

}