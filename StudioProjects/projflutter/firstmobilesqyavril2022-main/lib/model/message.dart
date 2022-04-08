
import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  late String idFrom;
  late String idTo;
  late String timestamp;
  late String content;

  //type: 0 =text, 1 =  image
  late int type;

  Message(
      {required this.idFrom,
        required this.idTo,
        required this.timestamp,
        required this.content,
        required this.type});

  Map<String, dynamic> toHashMap() {
    return {
      'idFrom': idFrom,
      'idTo': idTo,
      'timestamp': timestamp,
      'content': content,
      'type': type
    };
  }

  factory Message.fromMap(Map<String, dynamic> data){
    return Message(
        idFrom: data['idFrom'],
        idTo: data['idTo'],
        timestamp: data['timestamp'],
        content: data['content'],
        type: data['type']
    );
  }
}