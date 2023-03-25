import 'package:flutter/material.dart';
import 'package:priority/for_page4/add_button4.dart';
import 'package:priority/for_page4/header4.dart';
import 'package:priority/for_page4/info4.dart';
import 'package:priority/for_page4/list4.dart';


class TaskPage4 extends StatelessWidget {
  const TaskPage4({Key? key}) : super(key: key);

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
            Expanded(flex: 3, child: Header4()),

            /*******頁面名稱：urgent or important***************/
            Expanded(
              flex: 2,
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text("Most Urgent and Most Important",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(15, 1, 15, 1),
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            /*******Task Info View***************/
            Expanded(flex: 3, child: Info4()),

            /*********Task List View*****************/
            Expanded(
              flex: 30,
              child: List4(),
            ),
          ],
        ),
      ),

      /*******Add Task button at the right bottom side***********/
      floatingActionButton: const AddButton4(),
    );
  }
}
