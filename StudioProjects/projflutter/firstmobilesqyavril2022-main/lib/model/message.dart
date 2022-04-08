
import 'package:cloud_firestore/cloud_firestore.dart';

class Message{
  late String idFrom;
  late String idTo;
  late String timestamp;
  late String content;
  //type: 0 =text, 1 =  image
  late int type;




  Message(DocumentSnapshot snapshot){
    idFrom = snapshot.id;
    idTo = snapshot.id;
    Map<String,dynamic> map = snapshot.data() as Map<String,dynamic>;
    timestamp = map["TIMESTAMP"];
    content = map["CONTENT"];
    idFrom = map["IDFROM"];
    idTo = map["IDTO"];
    type = map["TYPE"];


  }

  Message.vide(){
    ufrom="";
    uto="";
    timestamp="";
    content="";
    type="";
  }





}