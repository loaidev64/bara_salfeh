import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/ask_questions_screen.dart';
import 'package:flutter/material.dart';

class PersonTypeScreen extends StatefulWidget {
  const PersonTypeScreen({super.key, required this.randomName});

  static const routeName = 'PersonTypeScreen';

  final String randomName;

  @override
  State<PersonTypeScreen> createState() => _PersonTypeScreenState();
}

class _PersonTypeScreenState extends State<PersonTypeScreen> {
  late String personName = widget.randomName;

  final List<String> names = [];

  bool firstScreen = true;

  String? animal;

  @override
  void initState() {
    super.initState();

    names.add(personName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              firstScreen ? firstScreenWidget : secondScreen,
              SizedBox(height: 20),
              ElevatedButton(onPressed: _next, child: Text('التالي')),
            ],
          ),
        ),
      ),
    );
  }

  Widget get firstScreenWidget => Column(
        children: [
          Text(
            personName,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            '''
اعطوا الجوال ل$personName
اضغط التالي حتى تعرف هل انت 
برا السالفة أو داخلها ولا تخلي احد غيرك
يشوف الشاشة!
''',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );

  Widget get secondScreen => Column(
        children: [
          Text(
            personName,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            personName == context.scoreDi.baraSalfehName
                ? '''
انت يلي برا السالفة! حاول تعرف وش
السالفة بالضبط من كلام البقية أو
 اقنعهم يصوتون على الشخص الخطأ!
 تلميح السالفة عن الحيوانات
'''
                : '''
أنت داخل السالفة واللي هي 
${context.scoreDi.salfehAnimal}
هدفك في اللعبة معرفة مين منكم اللي برا السالفة
''',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );

  void _next() {
    final scoreDi = context.scoreDi;

    if (!firstScreen) {
      final list = List.from(scoreDi.names)
        ..removeWhere((element) => names.contains(element))
        ..shuffle();
      if (list.isEmpty) {
        scoreDi.chooseWhoAskWho();
        context.push(AskQuestionsScreen.routeName);
        return;
      }
      personName = list.first;
      names.add(personName);
    }

    firstScreen = !firstScreen;

    setState(() {});
  }
}
