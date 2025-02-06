import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/vote_screen.dart';
import 'package:flutter/material.dart';

class MoreQuestionsScreen extends StatefulWidget {
  const MoreQuestionsScreen({super.key});

  static const routeName = 'MoreQuestionsScreen';

  @override
  State<MoreQuestionsScreen> createState() => _MoreQuestionsScreenState();
}

class _MoreQuestionsScreenState extends State<MoreQuestionsScreen> {
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
                  '''
${scoreDi.askings[index]} اختار الشخص تبغى تسأله أو
 اضغط زر تصويت إذا كنتم جاهزين
للتصويت على اللي برا السالفة
''',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _next,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade900,
                  ),
                  child: Text(
                    'أسأل',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: _vote,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: Text(
                      'تصويت',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          )),
    );
  }

  void _next() {
    index++;
    if (index == context.scoreDi.names.length) {
      index = 0;
    }
    setState(() {});
  }

  void _vote() => context.push(VoteScreen.routeName);
}
