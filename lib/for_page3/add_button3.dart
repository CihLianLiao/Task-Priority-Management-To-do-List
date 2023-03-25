import 'package:flutter/material.dart';
import 'package:priority/for_page3/models3.dart';
import 'package:priority/for_page3/add_task_bottom_sheet3.dart';
import 'package:provider/provider.dart';


class AddButton3 extends StatelessWidget {
  const AddButton3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Models3>(
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
                      const AddTaskBottomSheet3(), context);
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                )));
      },
    );
  }
}
