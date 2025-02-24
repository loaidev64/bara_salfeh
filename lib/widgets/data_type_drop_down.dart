import 'package:bara_salfeh/constants.dart';
import 'package:flutter/material.dart';

class DataTypeDropDown extends StatefulWidget {
  const DataTypeDropDown({super.key});

  @override
  State<DataTypeDropDown> createState() => _DataTypeDropDownState();
}

class _DataTypeDropDownState extends State<DataTypeDropDown> {
  void _onChangeDataType(DataTypes? type) {
    dataType = type ?? DataTypes.animals;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dataType,
      items: DataTypes.values
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(e.name),
              ))
          .toList(),
      onChanged: _onChangeDataType,
    );
  }
}
