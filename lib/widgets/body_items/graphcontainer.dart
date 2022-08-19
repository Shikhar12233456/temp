import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:temp/Screens/loggedin_screen.dart';

class grophcontainer extends StatefulWidget {
  grophcontainer({Key? key}) : super(key: key);

  @override
  State<grophcontainer> createState() => _grophcontainerState();
}

class _grophcontainerState extends State<grophcontainer> {
  int spends = 0;
  int budget = 18000;
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 17, 58, 129),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Total Spends",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "\u{20B9} $spends",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "\u{20B9} $budget ",
                  style: TextStyle(color: Colors.white.withOpacity(.5)),
                ),
                DottedLine(
                  lineLength: 200,
                  direction: Axis.horizontal,
                  dashLength: 5,
                  dashColor: Colors.white.withOpacity(.5),
                ),
                Text(
                  "budget",
                  style: TextStyle(color: Colors.white.withOpacity(.5)),
                )
              ],
            ),
            Container(
              height: 190,
              child: Text(""),
            ),
            Container(
              height: 3,
              width: 13,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 30,
              child: Text(
                "Jan month's data",
                style: TextStyle(
                    color: Colors.white.withOpacity(.5), fontSize: 13),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Pending KYC",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 10),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              "Lorem lpsum is simply dummy text of printing and type setting in indurstry.Lorem",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Button(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(90),
                            bottomRight: Radius.circular(45)),
                        color: Colors.amberAccent.withOpacity(.2)),
                    child: const Icon(
                      Icons.key,
                      size: 60,
                      color: Colors.amberAccent,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 186, 60, 60)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loggedscreen(0,0)));
            },
            child: const Text('  Complete Now  '),
          ),
        ],
      ),
    );
  }
}
