import 'package:flutter/material.dart';

class blogscard extends StatefulWidget {
  blogscard({Key? key}) : super(key: key);

  @override
  State<blogscard> createState() => _blogscardState();
}

class _blogscardState extends State<blogscard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(color: Colors.black.withOpacity(.1))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(19),
                        topRight: Radius.circular(19),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(.1))
                    ]),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10, 0.0, 5),
                child: Text(
                  "4 Method of calculating \nNetwork,which no one will \ntell you",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 5, 0.0, 5),
                child: Text(
                  "Read Time : 8 mins",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 17, 58, 129)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 5, 0.0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const[
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/sec_image.jpg"),
                          radius: 15,
                        ),
                         Text("Ann KorKowski")
                      ],
                    ),
                    const Text("08/09/2022")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
