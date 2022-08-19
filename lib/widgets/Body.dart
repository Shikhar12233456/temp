import 'package:flutter/material.dart';
import 'package:temp/widgets/body_items/blog.dart';
import 'package:temp/widgets/body_items/bottomtext.dart';
import 'package:temp/widgets/body_items/catagories.dart';
import 'package:temp/widgets/body_items/graphcontainer.dart';
import 'package:temp/widgets/body_items/offer&reward.dart';
import 'package:temp/widgets/body_items/tasks.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(8.0, 20, 8.0, 20.0),
              child: Text(
                "Complete Your \nKYC Now",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            grophcontainer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,20.0),
              child: Catgories(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,20.0),
              child: Tasks(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,20.0),
              child: O_R(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Blog(),
            ),
            bottomtext()
          ],
        ),
      ),
    );
  }
}
