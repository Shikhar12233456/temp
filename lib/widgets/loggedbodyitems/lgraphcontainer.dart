import 'dart:core';
import 'package:dotted_line/dotted_line.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:temp/widgets/loggedbodyitems/l_g_card.dart';

class l_graphcontainer extends StatefulWidget {
  l_graphcontainer(this.amount, this.date, {Key? key}) : super(key: key);
  final int amount;
  final int date;
  State<l_graphcontainer> createState() => _l_graphcontainer();
}

List<double> dailysp = [0];
List<FlSpot> data = [const FlSpot(0, 0)];
List<FlSpot> addData(double X, double Y) {
  double xp = dailysp[dailysp.length - 1] + Y;
  dailysp.add(xp);
  data.add(FlSpot(X, Y));

  return data;
}

class _l_graphcontainer extends State<l_graphcontainer> {
  int budget = 18000;

  @override
  Widget build(BuildContext context) {
    double xX = double.parse(widget.amount.toString());
    double yY = double.parse(widget.date.toString());
    double spend = dailysp[dailysp.length - 1] + widget.amount;
    return Container(
      height: 500,
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
              "\u{20B9} $spend",
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: 200,
                child: LineChart(
                  LineChartData(
                      minX: 0,
                      maxX: 30,
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(show: false),
                      lineTouchData: LineTouchData(
                        enabled: false,
                      ),
                      lineBarsData: [
                        LineChartBarData(
                            spots: addData(yY, xX),
                            isCurved: true,
                            color: Colors.white,
                            belowBarData: BarAreaData(
                                show: true,
                                color: const Color.fromARGB(255, 2, 39, 103)))
                      ],
                      backgroundColor: const Color.fromARGB(255, 17, 58, 129)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
              child: Text(
                "Jan month's data",
                style: TextStyle(
                    color: Colors.white.withOpacity(.5), fontSize: 13),
              ),
            ),
            l_g_card(),
          ],
        ),
      ),
    );
  }
}
