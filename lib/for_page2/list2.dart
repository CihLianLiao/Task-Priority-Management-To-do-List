import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:priority/for_page2/models2.dart';

class List2 extends StatelessWidget {
  const List2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Models2>(builder: (context, viewModel, child) {
      return Container(
          decoration: BoxDecoration(
              color: viewModel.clrLvl2,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
            itemCount: viewModel.numTasks,
            itemBuilder: (context, index) {
              return Dismissible(
                // To delete tasks
                key: UniqueKey(),
                onDismissed: (direction) {
                  HapticFeedback.mediumImpact();
                  viewModel.deleteTask(index);
                },
                background: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Icon(Icons.delete, color: Colors.red.shade700)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: viewModel.clrLvl1,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    // in front of task make a check box
                      leading: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        side: BorderSide(width: 2, color: viewModel.clrLvl3),
                        checkColor: viewModel.clrLvl1,
                        activeColor: viewModel.clrLvl3,
                        value: viewModel.getTaskValue(index),
                        onChanged: (value) {
                          viewModel.setTaskValue(index, value!);
                        },
                      ),
                      title: Text(viewModel.getTaskTitle(index),
                          style: TextStyle(
                              color: viewModel.clrLvl4,
                              fontSize: 20,
                              fontWeight: FontWeight.w500))),
                ),
              );
            },
          ));
    });
  }
}