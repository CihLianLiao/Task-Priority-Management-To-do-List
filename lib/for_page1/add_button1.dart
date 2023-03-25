import 'package:flutter/material.dart';
import 'package:priority/for_page1/models1.dart';
import 'package:priority/for_page1/add_task_bottom_sheet1.dart';
import 'package:provider/provider.dart';

class AddButton1 extends StatelessWidget {
  const AddButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Models1>(
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
                      const AddTaskBottomSheet1(), context);
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                )));
      },
    );
  }
}
