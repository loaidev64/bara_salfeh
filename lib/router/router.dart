import 'package:bara_salfeh/screens/add_persons_screen.dart';
import 'package:bara_salfeh/screens/choose_salfeh_screen.dart';
import 'package:flutter/cupertino.dart';

import '../screens/ask_questions_screen.dart';
import '../screens/bara_salfeh_screen.dart';
import '../screens/more_questions_screen.dart';
import '../screens/person_type_screen.dart';
import '../screens/score_screen.dart';
import '../screens/vote_screen.dart';

final class BaseRouter {
  static Route onGenerateRoute(RouteSettings settings) =>
      switch (settings.name) {
        AddPersonsScreen.routeName => _generatePageRoute(AddPersonsScreen()),
        AskQuestionsScreen.routeName =>
          _generatePageRoute(AskQuestionsScreen()),
        BaraSalfehScreen.routeName => _generatePageRoute(BaraSalfehScreen()),
        ChooseSalfehScreen.routeName =>
          _generatePageRoute(ChooseSalfehScreen()),
        MoreQuestionsScreen.routeName =>
          _generatePageRoute(MoreQuestionsScreen()),
        PersonTypeScreen.routeName => _generatePageRoute(PersonTypeScreen(
            randomName: settings.arguments as String,
          )),
        ScoreScreen.routeName => _generatePageRoute(ScoreScreen()),
        VoteScreen.routeName => _generatePageRoute(VoteScreen()),
        _ => _generatePageRoute(AddPersonsScreen()),
      };

  static CupertinoPageRoute _generatePageRoute(Widget widget) =>
      CupertinoPageRoute(builder: (_) => widget);
}
