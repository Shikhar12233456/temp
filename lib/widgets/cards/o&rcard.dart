import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black.withOpacity(.1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 280,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(.1))]),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "A rewarding Celebration",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Text("Win rewards from Citizen,peter\nengland, and More"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Container(
              height: 40,
              width: 240,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                      color: const Color.fromARGB(255, 17, 58, 129)
                          .withOpacity(.4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Explore rewards  ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color.fromARGB(255, 17, 58, 129)),
                  ),
                  Icon(
                    CupertinoIcons.plus,
                    color: Color.fromARGB(255, 17, 58, 129),
                    size: 22,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
