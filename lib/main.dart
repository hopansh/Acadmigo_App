import 'package:acadmigo/screens/fixed_screen.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  
  Widget build(BuildContext context) {
    OneSignal.shared.init('e9b1edce-059e-41d3-ad8c-b57af1d9b7ff');
    return MaterialApp(
      title: 'Acadmigo',
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: Color(0xff396060)),
        scaffoldBackgroundColor: Color(0xFFf2f2f2),
        primaryColor: Color(0xff80b1b3),
        backgroundColor: Color(0xFFffffff),
        splashColor: Color(0xFFcfe2e2),
        highlightColor: Color(0xffcfe2e2),
        hoverColor: Color(0xffcfe2e2),
      ),
      home: FixScr(),
    );
  }
}



