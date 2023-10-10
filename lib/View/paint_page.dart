
import 'package:flutter/material.dart';

class MyCheckboxList extends StatelessWidget {
  final List<ValueNotifier<bool>> _isChecked = List<ValueNotifier<bool>>.generate(
    5,
    (index) => ValueNotifier<bool>(false),
  );

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
body:     ListView.builder(
      itemCount: _isChecked.length,
      itemBuilder: (context, index) => ValueListenableBuilder(
        valueListenable: _isChecked[index],
        builder: (context, value, child) => CheckboxListTile(
          title: Text('Check me $index!'),
          value: value,
          onChanged: (value) => _isChecked[index].value = value!,
        ),
      ),
    ) ,
    );

  }}