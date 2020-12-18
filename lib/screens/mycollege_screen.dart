import 'package:acadmigo/widgets/clg_profile.dart';
import 'package:flutter/material.dart';
class MyCollege extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CollegeProfile("assets/images/Cid1.jpg","KIIT University", "Bhubaneshwar,Odhisa",
              "https://i2.wp.com/odishabytes.com/wp-content/uploads/2019/08/library.jpg?resize=750%2C424&ssl=1",
              "https://www.jagranjosh.com/imported/images/institute/KIIT-BHUBANESHWAR-365x240.jpg",
              "https://static.telegraphindia.com/library/THE_TELEGRAPH/image/2018/11/880d8615-7573-4439-8a7a-1ca15aebe7b6.jpg",
              "https://static.kiit.ac.in/news/2019/03/19154149/Engineering-means-KIIT-University-Arial-View.jpg","4.3","4.1","0.6"),
    );
  }
}
