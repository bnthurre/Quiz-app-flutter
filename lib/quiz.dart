import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenwidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenwidget = const QuestionsScreen();
    }
    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 5, 112, 126),
            Color.fromARGB(255, 3, 51, 58)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: screenwidget),
    ));
  }
}





// import 'package:flutter/material.dart';
// import 'package:quiz_app/questions_screen.dart';
// import 'package:quiz_app/start_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});
//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   var activeScreen = 'start-screen';
//   // Widget? activeScreen;
//   // @override
//   // void initState() {
//   //   activeScreen = StartScreen(switchScreen);
//   //   super.initState();
//   // }

//   void switchScreen() {
//     setState(() {
//       activeScreen = 'questions-screen';
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: Container(
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 5, 112, 126),
//             Color.fromARGB(255, 3, 51, 58)
//           ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
//           child: activeScreen == 'start-screen'
//               ? StartScreen(switchScreen)
//               : const QuestionsScreen()),
//     ));
//   }
// }
