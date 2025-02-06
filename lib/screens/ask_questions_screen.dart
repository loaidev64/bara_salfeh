import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/more_questions_screen.dart';
import 'package:flutter/material.dart';

class AskQuestionsScreen extends StatefulWidget {
  const AskQuestionsScreen({super.key});

  static const routeName = 'AskQuestionsScreen';

  @override
  State<AskQuestionsScreen> createState() => _AskQuestionsScreenState();
}

class _AskQuestionsScreenState extends State<AskQuestionsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final scoreDi = context.scoreDi;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'وقت الأسئلة',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '''
${scoreDi.askings[index]} اسأل ${scoreDi.answers[index]} سؤال متعلق
بالسالفة! اختار سؤالك بعناية حتى اللي
 برا السالفة ما يعرف عن ايش تتكلمون
''',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _next, child: Text('التالي')),
            ],
          ),
        ),
      ),
    );
  }

  void _next() {
    index++;
    if (index == context.scoreDi.names.length) {
      context.push(MoreQuestionsScreen.routeName);
      return;
    }
    setState(() {});
  }
}
