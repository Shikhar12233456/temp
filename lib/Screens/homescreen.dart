import 'package:flutter/material.dart';
import 'package:temp/widgets/Body.dart';
import 'package:temp/widgets/bottom_nav_bar.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottom_nav_bar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2.0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/main_image.jpg"),
            radius: 2.5,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome Back,",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 15),
            ),
            Text(
              "Waseem Akram",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.widgets_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}

// ignore: camel_case_types
