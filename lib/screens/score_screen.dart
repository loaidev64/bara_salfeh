import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/person_type_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  static const routeName = 'ScoreScreen';

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'النتائج',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    children: context.scoreDi.sortedScores.entries
                        .map((element) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(element.key),
                                Text(element.value.toString()),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => _next(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: Text(
                      'التالي',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 20),
              ],
            ),
          )),
    );
  }

  void _next(BuildContext context) {
    context.scoreDi.clear();
    context.scoreDi.chooseBaraSalfeh();
    context.push(PersonTypeScreen.routeName, context.scoreDi.scores.randomKey);
  }
}
