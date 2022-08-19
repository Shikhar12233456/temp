import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(10,0,0,0),
            child: Text(
              "Task",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
          ),
          task_componants(),
        ],
      ),
    );
  }
}

class task_componants extends StatelessWidget {
  const task_componants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:const [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: task_one(),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: task_two(),
          )
        ],
      ),
    );
  }
}

class task_one extends StatelessWidget {
  const task_one({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        decoration:  BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(30)),
     border: Border.all(color: Colors.black.withOpacity(.1))
        ),
        child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          first_task(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,14,0),
            child: Text(
              "O1",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent.withOpacity(.4)),
            ),
          )
        ],
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Complete KYC",
          style:
              TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      const Text(
        "Create Category and",
        style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(0,0,0,20),
        child: Text(
          "earn 25Rs/-",
          style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
        ),
      ),
    ],
        ),
      );
  }
}

class task_two extends StatelessWidget {
  const task_two({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
         border: Border.all(color: Colors.black.withOpacity(.1))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius:  const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(45.0),
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(90)),
                    color: Colors.amberAccent.withOpacity(.2)),
                child: const Icon(
                  Icons.flag,
                  color: Colors.amberAccent,
                  size: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,14,0),
                child: Text(
                  "O2",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent.withOpacity(.4)),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Create category",
              style:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          const Text(
            "Create Category and",
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,20),
            child: Text(
              "earn 25Rs/-",
              style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}

class first_task extends StatelessWidget {
  const first_task({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          borderRadius:  const BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(45.0),
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(90)),
          color: Colors.amberAccent.withOpacity(.2)),
      child: const Icon(
        Icons.key,
        color: Colors.amberAccent,
        size: 50,
      ),
    );
  }
}
