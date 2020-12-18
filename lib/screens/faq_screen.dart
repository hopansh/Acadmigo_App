import 'package:flutter/material.dart';
class FAQ extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("FAQ's"),
      ),
      body: 
        Container(
          width: 500,
          padding: EdgeInsets.symmetric(vertical:10,horizontal:0),
          color: Colors.yellow,
child:      Text("//////////////////\nUNDER\nCONSTRUCTION\n//////////////////" ,textAlign: TextAlign.center,style:TextStyle(color: Colors.black,fontSize: 50,fontFamily: "Rockwell",fontWeight: FontWeight.bold)),
        ),
    );
  }
}