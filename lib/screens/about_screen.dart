import 'package:flutter/material.dart';
class About extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
          padding: EdgeInsets.symmetric(vertical:10,horizontal:0),
          child: Image.asset("assets/images/Contact.png"), 
        )
    );
  }
}