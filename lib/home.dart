import 'package:flutter/material.dart';
import 'package:theme_example/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
              if (_value)
                MyApp.of(context)!.changeTheme(ThemeMode.dark);
              else
                MyApp.of(context)!.changeTheme(ThemeMode.light);
            });
          },
        ),
      ),
    );
  }
}
