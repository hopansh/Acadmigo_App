import 'package:flutter/material.dart';
class CustomTile extends StatelessWidget{
  final String _tileUrl;
  CustomTile(this._tileUrl);
  @override
  Widget build(BuildContext context)
  {
return Card(
  margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 34.50),
  color: Colors.white,
    clipBehavior: Clip.antiAlias,
    child:InkWell( 
      onTap: (){
             print("tile Clicked");
          },
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        AspectRatio(
          aspectRatio: 10.0 / 7.0,
          child: Image.asset(_tileUrl, alignment: Alignment.topCenter,fit: BoxFit.fill,),
        ),
      ],
    ),
  ),
);
  }
}