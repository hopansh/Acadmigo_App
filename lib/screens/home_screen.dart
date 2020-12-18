
import 'package:acadmigo/screens/faq_screen.dart';
import 'package:acadmigo/screens/favourite_screen.dart';
import 'package:acadmigo/screens/personalProfile_screen.dart';
import 'package:flutter/material.dart';
import '../screens/search_screen.dart';
import '../widgets/section.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        body: Section(),
        bottomNavigationBar:
         Container(
           height: 50,
            width :80,
           margin: EdgeInsets.symmetric(horizontal:60),
          decoration: BoxDecoration(
            
                color: Color(0xff9fc4c6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical:10,horizontal:8),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                  IconButton(
                  padding: EdgeInsets.fromLTRB(25, 0, 25,0),
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favourite()),
                );
              }),
              IconButton(
                padding: EdgeInsets.fromLTRB(25, 0, 25,0),
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              }),
              IconButton(
                padding: EdgeInsets.fromLTRB(25, 0, 25,0),
              icon: Icon(Icons.perm_identity),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalProfile()),
                );
              }),
              IconButton(
                padding: EdgeInsets.fromLTRB(25, 0, 25,0),
              icon: Icon(Icons.help_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FAQ()),
                );
              })
                ],)
                
         ),
       /// floatingActionButton: FloatingActionButton(
          ///heroTag: "bt1",
          ///foregroundColor: Colors.white,
          ///backgroundColor: Color(0xffff1a1a),
          ///splashColor: Color(0xff0088ff),
          ////onPressed: () {
            ////Navigator.push(
///              context,
   ////           MaterialPageRoute(builder: (context) => Favourite()),
       ////     );
          ///},
          ////child: Icon(Icons.favorite),)
        );
  }
}
