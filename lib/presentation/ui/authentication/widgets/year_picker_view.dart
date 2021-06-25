import 'package:flutter/material.dart';

class YearPickerView extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onChanged;

  const YearPickerView({
    Key? key,
    required this.selectedDate,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Need to use container to add size constraint.
      width: double.maxFinite,
      height: double.maxFinite,
      child: YearPicker(
        firstDate: DateTime(DateTime.now().year - 100, 1),
        lastDate: DateTime.now(),
        initialDate: DateTime.now(),
        // save the selected date to _selectedDate DateTime variable.
        // It's used to set the previous selected date when
        // re-showing the dialog.
        selectedDate: selectedDate,
        onChanged: onChanged,
      ),
    );
  }
}
