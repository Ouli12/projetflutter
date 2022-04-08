
import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  late String idFrom;
  late String idTo;
  late String content;

  Message(
      {required this.idFrom,
        required this.idTo,
        required this.content});

  Map<String, dynamic> toHashMap() {
    return {
      'idFrom': idFrom,
      'idTo': idTo,
      'content': content,
    };
  }

  factory Message.fromMap(Map<String, dynamic> data){
    return Message(
        idFrom: data['idFrom'],
        idTo: data['idTo'],
        content: data['content']
    );
  }
}