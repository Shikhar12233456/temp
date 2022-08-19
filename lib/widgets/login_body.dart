import 'package:flutter/material.dart';
import 'package:temp/widgets/body_items/blog.dart';
import 'package:temp/widgets/body_items/bottomtext.dart';
import 'package:temp/widgets/body_items/offer&reward.dart';
import 'package:temp/widgets/loggedbodyitems/lcatgories.dart';
import 'package:temp/widgets/loggedbodyitems/lgraphcontainer.dart';
import 'package:temp/widgets/loggedbodyitems/ltasks.dart';

class loginbody extends StatefulWidget {
  loginbody(this.amount, this.date, {Key? key}) : super(key: key);
  final int amount;
  final int date;
  @override
  State<loginbody> createState() => _loginbodyState();
}

class _loginbodyState extends State<loginbody> {
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
                "Your doing \nGreat keep it up",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            l_graphcontainer(widget.amount,widget.date),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
              child: l_catogaries(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
              child: l_tasks(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
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
