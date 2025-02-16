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
                child: Text(switch (e) {
                  DataTypes.animals => 'حيوانات',
                  DataTypes.arabCountries => 'دول عربية',
                  DataTypes.fruits => 'فواكه',
                  DataTypes.vegetables => 'خضراوات',
                  DataTypes.sports => 'رياضة',
                  DataTypes.desserts => 'حلويات',
                }),
              ))
          .toList(),
      onChanged: _onChangeDataType,
    );
  }
}
