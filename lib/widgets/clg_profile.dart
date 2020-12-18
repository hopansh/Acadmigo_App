import 'package:acadmigo/widgets/clg_rating.dart';
import 'package:acadmigo/widgets/clginfo.dart';
import 'package:flutter/material.dart';
import '../widgets/gallery_card.dart';

class CollegeProfile extends StatelessWidget {
  final String _clgDP, _clgName, _clgSubtext, _url1, _url2, _url3, _url4;
  final String _rating, _arating, _gbr;
  CollegeProfile(
      this._clgDP,
      this._clgName,
      this._clgSubtext,
      this._url1,
      this._url2,
      this._url3,
      this._url4,
      this._rating,
      this._arating,
      this._gbr);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80b1b3),
        body: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xff80b1b3),
          ),
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
          accountName: Text(
            _clgName,
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          accountEmail: Text(
            _clgSubtext,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage(_clgDP),
          )),
      Container(
        height: 210,
        child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            childAspectRatio: 7.0 / 10.0,
            children: <Widget>[
              GalleryCard(_url1),
              GalleryCard(_url2),
              GalleryCard(_url3),
              GalleryCard(_url4),
            ]),
      ),
      Card(
        margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Rating(_rating, _arating, _gbr),
      ),
      CollegeInfo(),
      Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white70,
          
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(30.0),
            topRight:Radius.circular(30.0),
          )
        )
      ),
     
    ]));
  }
}
