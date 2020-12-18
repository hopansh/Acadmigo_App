

import 'package:flutter/material.dart';
import '../screens/college_profile_screen.dart';
class CustomCard extends StatelessWidget{
  final String _clgDP,_clgName,_clgSubtext,_url1,_url2,_url3,_url4, _rating,_arating, _gbr;
  CustomCard(this._clgDP,this._clgName,this._clgSubtext,this._url1,this._url2,this._url3,this._url4,this._rating,this._arating,this._gbr);
  @override
  Widget build(BuildContext context)
  {
return Card(
  margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 25.0),
  color: Colors.white,
    clipBehavior: Clip.antiAlias,
    child:InkWell( 
      onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AcollegeProfileRoute(_clgDP,_clgName,_clgSubtext,_url1,_url2,_url3,_url4,_rating,_arating,_gbr)),
            );
          },
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        AspectRatio(
          aspectRatio: 10.0 / 7.0,
          child: Image.asset(_clgDP, alignment: Alignment.topCenter),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 2.0, 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_clgName, style: TextStyle(fontSize: 25.0)),
              SizedBox(height: 10.0),
              Text(_clgSubtext, style: TextStyle(fontSize: 15.0)),
            ],
          ),
        ),
      ],
    ),
  ),
);
  }
}