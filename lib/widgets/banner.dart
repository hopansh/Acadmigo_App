import 'package:flutter/material.dart';

class Banner extends StatelessWidget{
  final String _assetsPath;
  final double _height;
  Banner(this._assetsPath,this._height);
  @override
  Widget build(BuildContext context)
  {
    return Container(
      constraints: BoxConstraints.expand(
        height: _height,
      ),
      
      child: Image.asset(
        _assetsPath,
        fit: BoxFit.cover,
      )
    );
  }
}