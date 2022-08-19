import 'package:flutter/material.dart';
import 'package:temp/widgets/cards/o&rcard.dart';

class O_R extends StatefulWidget {
  O_R({Key? key}) : super(key: key);

  @override
  State<O_R> createState() => _O_RState();
}

class _O_RState extends State<O_R> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10,0,0,10),
          child: Text("Offers & Rewards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: card(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: card(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: card(),
              )
            ],
          ),
        )
      ],
    );
  }
}