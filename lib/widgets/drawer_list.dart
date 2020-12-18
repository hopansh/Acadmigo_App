import 'package:flutter/material.dart';
class Drawerlist extends StatelessWidget {
  final String _string;
  final int _color;
  final IconData _icon;
  Drawerlist(this._string, this._icon,this._color);
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left:15.0),
          child:Icon(_icon, color: Color(0xff8c8c8c)) ,),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(_string,style: TextStyle(color: Color(_color),fontSize: 17.0),),
        )
      ],
    );
  }    
}
