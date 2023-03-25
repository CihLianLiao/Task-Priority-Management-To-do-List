import 'package:flutter/material.dart';
import 'package:priority/for_page3/add_button3.dart';
import 'package:priority/for_page3/header3.dart';
import 'package:priority/for_page3/info3.dart';
import 'package:priority/for_page3/list3.dart';


class TaskPage3 extends StatelessWidget {
  const TaskPage3({Key? key}) : super(key: key);

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
            Expanded(flex: 3, child: Header3()),

            /*******頁面名稱：urgent or important***************/
            Expanded(
              flex: 2,
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Text("Not Urgent But Very Important",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(15, 1, 15, 1),
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            /*******Task Info View***************/
            Expanded(flex: 3, child: Info3()),

            /*********Task List View*****************/
            Expanded(
              flex: 30,
              child: List3(),
            ),
          ],
        ),
      ),

      /*******Add Task button at the right bottom side***********/
      floatingActionButton: const AddButton3(),
    );
  }
}
