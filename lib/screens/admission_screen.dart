import 'package:flutter/material.dart';
class Admission extends StatefulWidget{
  
  @override
  _AdmissionState createState() => _AdmissionState();
}

class _AdmissionState extends State<Admission> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
    
      body: Container(
          width: 500,
          padding: EdgeInsets.symmetric(vertical:10,horizontal:0),
          color: Colors.yellow,
child:      Text("//////////////////\nUNDER\nCONSTRUCTION\n//////////////////" ,textAlign: TextAlign.center,style:TextStyle(color: Colors.black,fontSize: 50,fontFamily: "Rockwell",fontWeight: FontWeight.bold)),
        ),
    );
  }
}