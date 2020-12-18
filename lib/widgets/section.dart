
import 'package:flutter/material.dart';
import './custom_card.dart';
import '../widgets/custom_Tile.dart';

class Section extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(15, 15.0, 0, 0),
        child: Text(
          "Top 10 Section",
          style: TextStyle(
              fontSize: 17, color: Color(0xff404040), fontFamily: "Arial"),
          textAlign: TextAlign.left,
        ),
      ),
      Container(
        height: 300,
        child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            childAspectRatio: 8.0 / 10.0,
            children: <Widget>[
              CustomTile("assets/images/acard1.png",),
              CustomTile("assets/images/acard2.png"),
            ]),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15, 10.0, 0, 0),
        child: Text(
          "Others",
          style: TextStyle(
              fontSize: 17, color: Color(0xff404040), fontFamily: "Arial"),
          textAlign: TextAlign.left,
        ),
      ),
      Container(
        height: 300,
        child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            childAspectRatio: 10.0 / 10.0,
            children: <Widget>[
// Pass Following Respectively in CustomCard _clgDP,_clgName,_clgSubtext,_url1,_url2,_url3,_url4
              CustomCard("assets/images/Cid1.jpg","KIIT University", "Bhubaneshwar,Odhisa",
              "https://i2.wp.com/odishabytes.com/wp-content/uploads/2019/08/library.jpg?resize=750%2C424&ssl=1",
              "https://www.jagranjosh.com/imported/images/institute/KIIT-BHUBANESHWAR-365x240.jpg",
              "https://static.telegraphindia.com/library/THE_TELEGRAPH/image/2018/11/880d8615-7573-4439-8a7a-1ca15aebe7b6.jpg",
              "https://static.kiit.ac.in/news/2019/03/19154149/Engineering-means-KIIT-University-Arial-View.jpg","4.3","4.1","0.6"),
             
              CustomCard("assets/images/Cid2.jpg", "Manipal University","Manipal", 
              "https://i.ytimg.com/vi/F3BrKOi18lE/maxresdefault.jpg",
              "https://www.jagranjosh.com/imported/images/E/Articles/manipal-mou-iupui.jpg",
              "https://collegeadmissionsinfo.in/wp-content/uploads/2020/03/manipal-university-1.jpg",
              "https://upload.wikimedia.org/wikipedia/en/e/e5/Manipal_Jaipur.jpg","3.9","4.4","0.7",
                  ),
            ]),
      ),
    ]);
  }
}
