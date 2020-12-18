import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

class Rating extends StatefulWidget {
  final String _rating, _arating,_gbr;
  Rating(this._rating, this._arating, this._gbr);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(35, 10, 37, 10),
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1200,
              radius: 100.0,
              lineWidth: 13.0,
              percent: double.parse(widget._rating) * 0.2,
              header: new Text(
                "User Rating",
                style: TextStyle(fontSize: 20.0,color: Color(0xff243c5b)),
              ),
              center: Text(
                widget._rating,
                style: TextStyle(fontSize: 30.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Color(0xff80b1b3),
              progressColor: Color(0xff243c5b),
            ),
          ),  
          Padding(
            padding: EdgeInsets.fromLTRB(37, 10, 35, 10),
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1200,
              radius: 100.0,
              lineWidth: 13.0,
              percent: double.parse(widget._arating) * 0.2,
              header: new Text(
                "Acadmigo Rating",
                style: TextStyle(fontSize: 20.0,color: Color(0xff243c5b)),
                
              ),
              center: Text(
                widget._arating,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Color(0xff80b1b3),
              progressColor: Color(0xff243c5b),
            ),
          ),
        ],
      ),
      Text("Boys:Girls",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center),
      Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 0, 0.0),
            child: Image.asset(
              "assets/images/boy.png",
              height: 40.0,
              width: 40,
            ),
          ),
          
          Padding(
            padding: EdgeInsets.fromLTRB(7, 5, 7, 0.0),
            child: LinearPercentIndicator(
              center: Text(widget._gbr),
              animation: true,
              animationDuration: 1200,
              lineHeight: 27.0,
              width: 296.0,
              percent: double.parse(widget._gbr),
              progressColor: Color(0xFF00cc99),
              backgroundColor: Color(0xffd98cb3),
            ),
          ),
               Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 4, 0.0),
            child: Image.asset(
            "assets/images/girl.png",
            height: 40.0,
            width: 40.0,
            ),
          ),
         
        ],
      ),
      Text("1     2     3     4     5     6     7     8     9     10",
          style: TextStyle(fontSize: 17, color: Color(0xffbfbfbf)),
          textAlign: TextAlign.center),
    ]);
  }
}
