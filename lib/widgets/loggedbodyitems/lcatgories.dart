import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_icons/food_icons.dart';

class l_catogaries extends StatefulWidget {
  l_catogaries({Key? key}) : super(key: key);

  @override
  State<l_catogaries> createState() => _l_catogariesState();
}

class _l_catogariesState extends State<l_catogaries> {
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: cat(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: cat_2(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: cat_3(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: cat_4(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class cat_4 extends StatelessWidget {
  const cat_4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              border: Border.all(color: Colors.black.withOpacity(.1))),
          child: const Icon(
            IconData(0xe687, fontFamily: 'MaterialIcons'),
            color: Colors.lightBlue,
            size: 40,
          ),
        ),
        const Text(
          "Entertainment",
          style: TextStyle(),
        )
      ],
    );
  }
}

class cat_3 extends StatelessWidget {
  const cat_3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              border: Border.all(color: Colors.black.withOpacity(.1))),
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
    );
  }
}

class cat_2 extends StatelessWidget {
  const cat_2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              border: Border.all(color: Colors.black.withOpacity(.1))),
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
    );
  }
}

class cat extends StatelessWidget {
  const cat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              border: Border.all(color: Colors.black.withOpacity(.1))),
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
    );
  }
}
