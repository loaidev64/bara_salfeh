import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/person_type_screen.dart';
import 'package:bara_salfeh/widgets/data_type_drop_down.dart';
import 'package:flutter/material.dart';

class AddPersonsScreen extends StatefulWidget {
  const AddPersonsScreen({super.key});

  static const routeName = 'AddPersonsScreen';

  @override
  State<AddPersonsScreen> createState() => _AddPersonsScreenState();
}

class _AddPersonsScreenState extends State<AddPersonsScreen> {
  final nameController = TextEditingController();

  final List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) => value == null || value.isEmpty
                      ? 'يجب إدخال هذا الحقل'
                      : null,
                ),
                SizedBox(height: 10),
                Builder(builder: (context) {
                  return ElevatedButton(
                      onPressed: () => _addNewPerson(context),
                      child: Text('إضافة شخص جديد'));
                }),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        title: Text(names[index]),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                DataTypeDropDown(),
                SizedBox(height: 10),
                if (names.isNotEmpty)
                  Builder(builder: (context) {
                    return ElevatedButton(
                        onPressed: () {
                          context.scoreDi.chooseBaraSalfeh();
                          context.push(PersonTypeScreen.routeName,
                              context.scoreDi.scores.randomKey);
                        },
                        child: Text('تم'));
                  }),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _addNewPerson(BuildContext context) {
    if (Form.of(context).validate()) {
      names.add(nameController.text);
      context.scoreDi.scores[nameController.text] = 0;
      setState(() {});
      nameController.clear();
    }
  }
}
