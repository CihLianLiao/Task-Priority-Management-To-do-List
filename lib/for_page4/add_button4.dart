import 'package:flutter/material.dart';
import 'package:priority/for_page4/models4.dart';
import 'package:priority/for_page4/add_task_bottom_sheet4.dart';
import 'package:provider/provider.dart';

class AddButton4 extends StatelessWidget {
  const AddButton4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Models4>(
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
                      const AddTaskBottomSheet4(), context);
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                )));
      },
    );
  }
}
