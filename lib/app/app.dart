import 'package:flutter/material.dart';

import '../quackle/views/quackle_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Fishle',
        debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),  // Change theme color to black
          home: const QuackleScreen(),
    );
  }
}