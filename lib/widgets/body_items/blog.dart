import 'package:flutter/material.dart';
import 'package:temp/widgets/cards/blogscard.dart';

class Blog extends StatefulWidget {
  Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text("Blogs",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,10,20),
                  child: blogscard(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,10,20),
                  child: blogscard(),
                ),
                Padding(
                   padding: const EdgeInsets.fromLTRB(0,20,10,20),
                  child: blogscard(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}