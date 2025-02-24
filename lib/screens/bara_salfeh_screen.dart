import 'dart:async';

import 'package:bara_salfeh/di/score_di.dart';
import 'package:bara_salfeh/screens/choose_salfeh_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaraSalfehScreen extends StatefulWidget {
  const BaraSalfehScreen({super.key});

  static const routeName = 'BaraSalfehScreen';

  @override
  State<BaraSalfehScreen> createState() => _BaraSalfehScreenState();
}

class _BaraSalfehScreenState extends State<BaraSalfehScreen> {
  String personName = '';

  late final baraSalfehName = context.scoreDi.baraSalfehName;

  late final names = context.scoreDi.names;

  late StreamSubscription streamSubscription;

  @override
  void initState() {
    super.initState();

    int index = 0;

    int tries = 0;

    streamSubscription = Stream.periodic(
      Duration(milliseconds: 200),
      (computationCount) => computationCount,
    ).listen((event) {
      if (15 == tries) {
        personName = baraSalfehName;
        setState(() {});
        return;
      }
      index++;
      if (index == names.length) {
        index = 0;
      }
      personName = names[index];
      tries++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('''الشخص يلي ما بيعرف شو الموضوع هو...'''),
                SizedBox(height: 100),
                Text(
                  personName,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 100),
                ElevatedButton(
                    onPressed: _next,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: Text(
                      'التالي',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          )),
    );
  }

  void _next() {
    if (personName != baraSalfehName) return;
    context.push(ChooseSalfehScreen.routeName);
  }

  @override
  void dispose() {
    streamSubscription.cancel();
    super.dispose();
  }
}
