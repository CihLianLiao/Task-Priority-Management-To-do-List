import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:priority/for_page4/models4.dart';

class Info4 extends StatelessWidget {
  const Info4({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Models4>(builder: (context, viewModel, child) {
      return Container(
        margin: EdgeInsets.fromLTRB(15, 8, 15, 8),
        child: Row(
          children: [

            // Remaining Tasks
            Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text("${viewModel.numTasksRemaining}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: viewModel.clrLvl3,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text("Remaining",
                                style: TextStyle(
                                    color: viewModel.clrLvl4,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      )
                    ],
                  )),
            ),

            SizedBox(width: 20),


            Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text("${viewModel.numTasks}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: viewModel.clrLvl3,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text("Total Tasks",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: viewModel.clrLvl4,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
    });
  }
}