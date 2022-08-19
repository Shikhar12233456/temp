import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom_nav_bar extends StatelessWidget {
  const Bottom_nav_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0,10.0,5.0,10.0),
      child: Container(
        decoration: const BoxDecoration(  
          color: Colors.transparent,                                                 
        borderRadius: BorderRadius.all(                                           
          Radius.circular(20)),            
          boxShadow: [                                                               
          BoxShadow(color: Color.fromARGB(20, 0, 0, 0), spreadRadius: 0,),       
        ],                                                                         
       ),
        child: const ClipRRect(
          borderRadius: BorderRadius.all(                                           
            Radius.circular(20)                                           
          ), 
          child: GNav(
            color: Color.fromARGB(255, 183, 195, 218),
            tabBorderRadius: 7,
            iconSize: 20,
            gap: 0,
           // curve: Curves.easeOutExpo, 
            tabBackgroundColor: Color.fromARGB(255, 183, 195, 218),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            tabs:[
             GButton(
              icon: CupertinoIcons.home,
              text: "Home",
              textSize: 5,
              iconColor: Color.fromARGB(255, 19, 25, 62),
            ),
            GButton(
              icon: CupertinoIcons.creditcard,
              iconColor: Color.fromARGB(255, 19, 25, 62),
            ),
            GButton(
              icon: CupertinoIcons.chart_pie,
              text: "Cir",
              iconColor: Color.fromARGB(255, 19, 25, 62),
            ),
            GButton(
              icon: CupertinoIcons.rosette,
              text: "arch",
              iconColor: Color.fromARGB(255, 19, 25, 62),
            )
          ]),
        ),
      ),
    );
  }
}
