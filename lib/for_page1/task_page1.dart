import 'package:flutter/material.dart';
import 'package:priority/for_page1/add_button1.dart';
import 'package:priority/for_page1/header1.dart';
import 'package:priority/for_page1/info1.dart';
import 'package:priority/for_page1/list1.dart';


class TaskPage1 extends StatelessWidget {
  const TaskPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            /*******Protect the top to be in the sage area***************/
            SizedBox(
              height: 5,
            ),

            /*******Header View******************************/
            Expanded(flex: 3, child: Header1()),

            /*******頁面名稱：urgent or important***************/
            Expanded(
              flex: 2,
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text("Not Urgent and Not Important",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(15, 1, 15, 1),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            /*******Task Info View***************/
            Expanded(flex: 3, child: Info1()),

            /*********Task List View*****************/
            Expanded(
              flex: 30,
              child: List1(),
            ),
          ],
        ),
      ),

      /*******Add Task button at the right bottom side***********/
      floatingActionButton: const AddButton1(),
    );
  }
}
