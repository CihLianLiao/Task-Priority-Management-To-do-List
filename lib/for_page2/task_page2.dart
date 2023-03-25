import 'package:flutter/material.dart';
import 'package:priority/for_page2/add_button2.dart';
import 'package:priority/for_page2/header2.dart';
import 'package:priority/for_page2/info2.dart';
import 'package:priority/for_page2/list2.dart';


class TaskPage2 extends StatelessWidget {
  const TaskPage2({Key? key}) : super(key: key);

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
            Expanded(flex: 3, child: Header2()),

            /*******頁面名稱：urgent or important***************/
            Expanded(
              flex: 2,
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text("Urgent But Not Important",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(15, 1, 15, 1),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            /*******Task Info View***************/
            Expanded(flex: 3, child: Info2()),

            /*********Task List View*****************/
            Expanded(
              flex: 30,
              child: List2(),
            ),
          ],
        ),
      ),

      /*******Add Task button at the right bottom side***********/
      floatingActionButton: const AddButton2(),
    );
  }
}
