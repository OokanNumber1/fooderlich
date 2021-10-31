import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Theme Creation
    final theme = FooderlichTheme.dark();
    return MaterialApp(
        theme: theme, // from final theme above
        title: 'Fooderlich',
        home: Home());
  }
}
