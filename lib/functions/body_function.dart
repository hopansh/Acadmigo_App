import 'package:acadmigo/screens/about_screen.dart';
import 'package:acadmigo/screens/coaching_screen.dart';
import 'package:acadmigo/screens/home_screen.dart';
import 'package:acadmigo/screens/notes_screen.dart';
import 'package:flutter/material.dart';
import '../screens/faq_screen.dart';
import '../screens/home_screen.dart';
import '../screens/online_study_screen.dart';
import '../screens/ranking_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/admission_screen.dart';
import '../screens/mycollege_screen.dart';
class BodyFunction extends StatelessWidget {
final String _option;
BodyFunction(this._option);

  @override
  Widget build(BuildContext context) {
    if (_option == "About Us")
      return About();
      else if(_option=="Admission")
      return Admission();
    else if (_option == "My College")
      return MyCollege();
    else if (_option == "Coaching")
      return Coaching();
    else if (_option == "Notes")
      return Notes();
    else if (_option == "Ranking")
      return Ranking();
    else if (_option == "Study Online")
      return OnlineStudy();
    else if (_option == "Settings") 
      return Settings();
    else if (_option=="FAQ's")
    return FAQ();
    else return Home();
  }
}
