import 'package:flutter/material.dart';
import 'package:todo_list_app/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Todo List"),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "All TODO Taks",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: Offset(2, 0))
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          "Make Youtube Video at 4.30 Flutter video and upload it on youtube",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: const Color.fromARGB(255, 28, 28, 28),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.done,
                              color: Colors.green,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
