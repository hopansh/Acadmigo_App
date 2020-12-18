import 'package:flutter/material.dart';

class Coaching extends StatefulWidget {
  @override
  _CoachingState createState() => _CoachingState();
}

class _CoachingState extends State<Coaching> {
  int _bodyIndex = 0;
  final List<String> category = [
    "JEE(Main)", "JEE(Main&Advanced)", "Pre-Medical(NEET-UG)", "Class VII to X", "NTSE","Olympiads"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80b1b3),
        body: ListView(
      children: <Widget>[
        Container(
            height:70.0,
            color: Color(0xff80b1b3),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _bodyIndex = index;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Text(
                          category[index],
                          style: TextStyle(
                              color: index == _bodyIndex
                                  ? Colors.white
                                  : Colors.white60,
                              fontSize: 20.0),
                        )),
                  );
                })),
        Container(
            height: 2000,
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ))),
      ],
    ));
  }
}
