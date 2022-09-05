import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTittle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;
  TaskTile(
      {required this.isChecked,
      required this.taskTittle,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack(),
      title: Text(taskTittle),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue) {
            checkBoxCallBack(newValue);
          }),
    );
  }
}
// TaskCheckBox(
//   checkboxState: isChecked,
//   toggleCheckBoxState: ,
// ),
// );

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckBoxState;
//   TaskCheckBox(
//       {required this.checkboxState, required this.toggleCheckBoxState});
//   @override
//   Widget build(BuildContext context) {
//     return Container();
// }
