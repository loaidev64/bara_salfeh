import 'package:bara_salfeh/constants.dart';
import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/score_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseSalfehScreen extends StatefulWidget {
  const ChooseSalfehScreen({super.key});

  static const routeName = 'ChooseSalfehScreen';

  @override
  State<ChooseSalfehScreen> createState() => _ChooseSalfehScreenState();
}

class _ChooseSalfehScreenState extends State<ChooseSalfehScreen> {
  late final List<String> _getAnimalNames = (List<String>.from(data)
        ..removeWhere((element) => element == context.scoreDi.salfehAnimal)
        ..shuffle())
      .take(6)
      .toList()
    ..add(context.scoreDi.salfehAnimal)
    ..shuffle();

  bool showRightAnswer = false;

  String selectedName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('''${context.scoreDi.baraSalfehName} شو الموضوع؟'''),
                SizedBox(height: 20),
                for (final name in _getAnimalNames) ...[
                  ElevatedButton(
                    onPressed: () => _choose(name),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: !showRightAnswer
                            ? Colors.red.shade900
                            : name == context.scoreDi.salfehAnimal
                                ? Colors.green
                                : const Color.fromARGB(255, 255, 17, 0),
                      ),
                    ),
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                ]
              ],
            ),
          )),
    );
  }

  void _choose(String name) async {
    showRightAnswer = true;
    selectedName = name;
    setState(() {});

    await Future.delayed(Duration(seconds: 2));
    if (!mounted) return;
    final scoreDi = context.scoreDi;
    if (name == scoreDi.salfehAnimal) {
      scoreDi.scores[scoreDi.baraSalfehName] =
          scoreDi.scores[scoreDi.baraSalfehName]! + 100;
    }
    context.push(ScoreScreen.routeName);
  }
}
