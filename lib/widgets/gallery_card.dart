

import 'package:flutter/material.dart';
class GalleryCard extends StatelessWidget{
  final String _url;
  GalleryCard(this._url);
  @override
  Widget build(BuildContext context)
  {
    return Card(
                clipBehavior: Clip.antiAlias,
                color: Color(0xff1b2936),
                 child: Column(children: <Widget>[
                  Image.network(_url, height: 202,fit: BoxFit.fill,),
                 ],)
                );
  }
}