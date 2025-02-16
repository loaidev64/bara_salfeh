import 'package:flutter/cupertino.dart';

import '../constants.dart';

// ignore: must_be_immutable
final class ScoreDi extends InheritedWidget {
  final Map<String, int> scores = {};

  List<String> get names => scores.keys.toList();

  final Map<String, String> whoAskWho = {};

  List<String> get askings => whoAskWho.keys.toList();

  List<String> get answers => whoAskWho.values.toList();

  // Getter to return scores sorted from highest to lowest
  Map<String, int> get sortedScores {
    // Convert the map entries to a list
    var sortedEntries = scores.entries.toList();

    // Sort the list in descending order based on the score
    sortedEntries.sort((a, b) => b.value.compareTo(a.value));

    // Convert the sorted list back to a map
    return Map.fromEntries(sortedEntries);
  }

  String baraSalfehName = '';

  String salfehAnimal = '';

  ScoreDi({
    required super.child,
    super.key,
  });

  static ScoreDi? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScoreDi>();
  }

  static ScoreDi of(BuildContext context) {
    final ScoreDi? result = maybeOf(context);
    assert(result != null, 'No ScoreDi found in context');
    return result!;
  }

  void chooseBaraSalfeh() {
    baraSalfehName = (names..shuffle()).first;
    salfehAnimal = (List.from(data)..shuffle()).first;
  }

  void chooseWhoAskWho() {
    // Clear the previous assignments
    whoAskWho.clear();

    // Create a list of names
    List<String> shuffledNames = List.from(names)..shuffle();

    // Assign each person to ask the next person in the shuffled list
    for (int i = 0; i < shuffledNames.length; i++) {
      String asker = shuffledNames[i];
      String answerer = shuffledNames[(i + 1) % shuffledNames.length];
      whoAskWho[asker] = answerer;
    }
  }

  void clear() {
    baraSalfehName = '';
    salfehAnimal = '';
  }

  @override
  bool updateShouldNotify(covariant ScoreDi oldWidget) => false;
}

extension RandomElement on Map<String, int> {
  String get randomKey {
    final list = Map<String, int>.from(this).entries.toList()..shuffle();
    return list.first.key;
  }
}

extension ScoreDiBuildContext on BuildContext {
  ScoreDi get scoreDi => ScoreDi.of(this);

  // void popAndPushUntil(Widget newWidget) {
  //   Navigator.of(this).popUntil((route) => Navigator.canPop(this));
  //   push(newWidget);
  // }

  void push(String routeName, [Object? data]) =>
      Navigator.of(this).popAndPushNamed(routeName, arguments: data);
}
