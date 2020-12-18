import 'package:acadmigo/widgets/clg_profile.dart';

import 'package:flutter/material.dart';



class AcollegeProfileRoute extends StatelessWidget {
  
  final String _clgDP,_clgName,_clgSubtext,_url1,_url2,_url3,_url4;
  final String _rating,_arating,_gbr;
  AcollegeProfileRoute(this._clgDP,this._clgName,this._clgSubtext,this._url1,this._url2,this._url3,this._url4,this._rating,this._arating,this._gbr);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("College Profile"), actions: <Widget>[
      Center(child: FavouriteButton()),
        ]),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("Added to Compare");
          },
        label: Text('Add To Compare'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.pink,
        ),
        body: CollegeProfile(_clgDP, _clgName, _clgSubtext, _url1, _url2, _url3, _url4, _rating, _arating, _gbr),
    );
  }
  
}
class FavouriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      
      onTap: () {
        final snackBar = SnackBar(content: Text("Added To Favourites"));

        Scaffold.of(context).showSnackBar(snackBar);
      },
      // The custom button
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
        child: Icon(Icons.favorite),
    ));
  }
}