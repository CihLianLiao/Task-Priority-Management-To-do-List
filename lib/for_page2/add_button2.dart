import 'package:flutter/material.dart';
import 'package:priority/for_page2/models2.dart';
import 'package:priority/for_page2/add_task_bottom_sheet2.dart';
import 'package:provider/provider.dart';

class AddButton2 extends StatelessWidget {
  const AddButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Models2>(
      builder: (context, viewModel, child) {
        return SizedBox(
            height: 60,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: viewModel.clrLvl3,
                    foregroundColor: viewModel.clrLvl1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  viewModel.bottomSheetBuilder(
                      const AddTaskBottomSheet2(), context);
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                )));
      },
    );
  }
}
