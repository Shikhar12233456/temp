import 'package:flutter/material.dart';
import 'package:temp/Screens/transition.dart';

class l_g_card extends StatefulWidget {
  l_g_card({Key? key}) : super(key: key);

  @override
  State<l_g_card> createState() => _l_g_cardState();
}

class _l_g_cardState extends State<l_g_card> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 4, 6),
              child: projected_saving(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 4, 6),
              child: Highest_spend(),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(4, 0, 0, 6),
          child: card_balance(),
        )
      ],
    );
  }
}

class card_balance extends StatelessWidget {
  const card_balance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Card Balance",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 12),
                  child: Text("\u{20B9} 1500",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.red.withOpacity(.3)),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "Low bal",
                        style: TextStyle(fontSize: 10, color: Colors.red),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 17, 0, 0),
              child: Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(110)),
                    color: Color.fromARGB(255, 17, 58, 129)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => transition()));
                      },
                      child: const Text(
                        "Add",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Highest_spend extends StatelessWidget {
  const Highest_spend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 198, 141, 55).withOpacity(.3)),
                  child: Icon(
                    const IconData(0xf188, fontFamily: 'MaterialIcons'),
                    size: 30,
                    color: Colors.orange.withOpacity(.5),
                  ),
                ),
                const Text(
                  "  Higest Spent     ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 12),
              child: Text("\u{20B9} 2000",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
            )
          ],
        ),
      ),
    );
  }
}

class projected_saving extends StatelessWidget {
  const projected_saving({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.brown.withOpacity(.3)),
                  child: Icon(
                    Icons.savings_outlined,
                    size: 30,
                    color: Colors.brown.withOpacity(.8),
                  ),
                ),
                const Text(
                  "Projected Saving",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 12),
              child: Text("\u{20B9} 2000",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
            )
          ],
        ),
      ),
    );
  }
}
