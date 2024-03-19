import 'package:flutter/material.dart';
import 'package:tetris/game/start_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(brightness: Brightness.dark).copyWith(
          scaffoldBackgroundColor: Color.fromARGB(255, 221, 148, 172),
          dividerColor: const Color(0xFF2F2F2F),
          dividerTheme: const DividerThemeData(thickness: 10),
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const MyApp(),
      );
}
