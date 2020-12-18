import 'package:flutter/material.dart';

class CollegeInfo extends StatefulWidget {
  @override
  _CollegeInfoState createState() => _CollegeInfoState();
}

class _CollegeInfoState extends State<CollegeInfo> {
  int _bodyIndex=0;
  final List<String>category=["Ranking","Placements","Location","Admission"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Color(0xff80b1b3),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  _bodyIndex= index; 
                });
              },
             child: Padding(padding: EdgeInsets.symmetric(horizontal:20.0,vertical:10) ,
            child: Text(category[index],
            style: TextStyle(color: index== _bodyIndex ? Colors.white : Colors.white60,fontSize:20.0),)
            ),);
        },
      ),
      
    );
      }
}
