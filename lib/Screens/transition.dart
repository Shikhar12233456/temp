import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:temp/Screens/loggedin_screen.dart';

class transition extends StatefulWidget {
  transition({Key? key}) : super(key: key);

  @override
  State<transition> createState() => _transitionState();
}

final mode = <String>['UPI', 'Card', 'Cash'];

class _transitionState extends State<transition> {
  int? _value = 1;
  late int amount;
  late int date;
  DateTime todaydate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Adding Transition",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 0, 8.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Enter Spend amount",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  child: Text(
                      "Enter the amount that you have spend without using zero balance")),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: 'Enter amount',
                  ),
                  onChanged: (value) {
                    try {
                      amount = int.parse(value);
                    } catch (e) {}
                  },
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Enter Date only",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Date',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'Enter Date only : like 19,20,12 etc',
                ),
                onChanged: (value) {
                  try {
                    date = int.parse(value);
                  } catch (e) {}
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Mode of Payment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Row(
                children: List<Widget>.generate(
                  3,
                  (int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                      child: ChoiceChip(
                        selectedColor: const Color.fromARGB(255, 17, 58, 129),
                        backgroundColor: Colors.white,
                        elevation: 2.0,
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(mode[index]),
                        ),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = selected ? index : null;
                          });
                        },
                      ),
                    );
                  },
                ).toList(),
              ),
              const Text(
                "Quick Note",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Note',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'Note',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(110)),
                      color: Color.fromARGB(255, 17, 58, 129)),
                  child: TextButton(
                      onPressed: () {
                        if (amount == 0 || date == 0) {
                          Fluttertoast.showToast(
                              msg: "Amount or Date Cann't be Null");
                        } else {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    loggedscreen(amount, date)),
                            (Route<dynamic> route) => false,
                          );
                        }
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
            ],
          ),
        ),
      ),
    );
  }
}
