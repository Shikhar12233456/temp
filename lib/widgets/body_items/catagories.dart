import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Catgories extends StatefulWidget {
  Catgories({Key? key}) : super(key: key);

  @override
  State<Catgories> createState() => _CatgoriesState();
}

class _CatgoriesState extends State<Catgories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 20.0, 0.0, 20.0),
            child: Text(
              "Catagories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40),
                        ),
                        border:
                            Border.all(color: Colors.black.withOpacity(.1))),
                    child: const Icon(
                      IconData(0xf188, fontFamily: 'MaterialIcons'),
                      color: Colors.orange,
                      size: 40,
                    ),
                  ),
                  const Text(
                    "Food",
                    style: TextStyle(),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40),
                        ),
                        border:
                            Border.all(color: Colors.black.withOpacity(.1))),
                    child: const Icon(
                      CupertinoIcons.paw,
                      color: Colors.pink,
                      size: 40,
                    ),
                  ),
                  const Text(
                    "Pet",
                    style: TextStyle(),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40),
                        ),
                        border:
                            Border.all(color: Colors.black.withOpacity(.1))),
                    child: const Icon(
                      CupertinoIcons.bag_fill,
                      color: Colors.lightBlue,
                      size: 40,
                    ),
                  ),
                  const Text(
                    "Shopping",
                    style: TextStyle(),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
