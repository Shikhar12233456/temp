import 'package:flutter/material.dart';

class bottomtext extends StatefulWidget {
  bottomtext({Key? key}) : super(key: key);

  @override
  State<bottomtext> createState() => _bottomtextState();
}

class _bottomtextState extends State<bottomtext> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 5,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.25),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "A budget doesn't \nlimit Your freedom;\nit gives you\nfreedom",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.25)),
          ),
        ),
      ],
    );
  }
}
