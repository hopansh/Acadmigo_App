import 'package:acadmigo/functions/body_function.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer_list.dart';
import '../screens/search_screen.dart';
class FixScr extends StatefulWidget {
  @override
  _FixScrState createState() => _FixScrState();
}

class _FixScrState extends State<FixScr> {
  String _option = "Acadmigo";
  @override
  void setState(fn) {
    // TODO: implement setState
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      appBar: AppBar(
        backgroundColor: Color(0xffffff),
        title: Text(_option,style: TextStyle(color: Color(0xff396060))),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search,color: Color(0xff396060),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              })
        ],
        elevation: 0.0,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.fromLTRB(0.0, .0, 0.0, 0.0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  accountName: Text("Hopansh Gahlot",),
                  accountEmail: Text("hopanshgahlot@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/dp1.png"),
                    
                    backgroundColor: Color(0xff121e2e),
                  )),
            ),
           
            ListTile(
                title: Drawerlist(
                  'Home',
                  Icons.home,
                  0xff262626,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "Acadmigo";
                  });
                }),
                ListTile(
                title: Drawerlist('My College', Icons.security, 0xff262626),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "My College";
                  });
                }),
            ListTile(
                title: Drawerlist(
                  'Admission',
                  Icons.font_download,
                  0xff262626,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "Admission";
                  });
                }),
            
            ListTile(
                title: Drawerlist("Coaching", Icons.school, 0xff262626),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "Coaching";
                  });
                }),
            ListTile(
                title: Drawerlist("Notes", Icons.local_library, 0xff262626),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "Notes";
                  });
                }),
            ListTile(
                title: Drawerlist("Ranking", Icons.sort_by_alpha, 0xff262626),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "Ranking";
                  });
                }),
            ListTile(
                title: Drawerlist("Study Online", Icons.video_call, 0xff262626),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "Study Online";
                  });
                }),
            Divider(),
            ListTile(
                title: Drawerlist("Settings", Icons.settings, 0xff262626),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "Settings";
                  });
                }),
            Divider(),
            ListTile(
                title: Drawerlist("FAQ's", Icons.help_outline, 0xff4d4d4d),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "FAQ's";
                  });
                }),
            ListTile(
                title: Drawerlist("About Us", Icons.info_outline, 0xff4d4d4d),
                onTap: () {
                  Navigator.of(context).pop();
                  super.setState(() {
                    _option = "About Us";
                  });
                }),
            ListTile(
              title: Text("Acadmigo v1.0.1"),
            ),
          ],
        ),
      ),
      body: BodyFunction(_option),
    );
  }
}
