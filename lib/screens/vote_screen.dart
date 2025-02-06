import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/bara_salfeh_screen.dart';
import 'package:flutter/material.dart';

class VoteScreen extends StatefulWidget {
  const VoteScreen({super.key});

  static const routeName = 'VoteScreen';

  @override
  State<VoteScreen> createState() => _VoteScreenState();
}

class _VoteScreenState extends State<VoteScreen> {
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
                Text('''
${scoreDi.askings[index]} اختار الشخص اللي تظن انه برا السالفة
'''),
                SizedBox(height: 20),
                for (final name in List<String>.from(scoreDi.names)
                  ..removeWhere(
                      (element) => element == scoreDi.askings[index])) ...[
                  ElevatedButton(
                    onPressed: () => _next(name),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                    ),
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ],
            ),
          )),
    );
  }

  void _next(String name) {
    final scoreDi = context.scoreDi;
    if (name == scoreDi.baraSalfehName) {
      scoreDi.scores[scoreDi.askings[index]] =
          scoreDi.scores[scoreDi.askings[index]]! + 100;
    }
    index++;
    if (index == scoreDi.names.length) {
      context.push(BaraSalfehScreen.routeName);
      return;
    }
    setState(() {});
  }
}
