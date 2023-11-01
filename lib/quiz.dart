
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 4, 95, 122),
                Color.fromARGB(255, 2, 122, 138)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: screenWidget
            //activeScreen == 'start_screen'
            //? StartScreen(switchScreen) // ternary expression
            //: const QuestionsScreen()
            ),
      ),
    );
  }
}


// another way of rendering content conditionally
// import 'package:flutter/material.dart';
// import 'package:quiz_app/questions_screen.dart';
// import 'package:quiz_app/start_screen.dart';

// class QuizScreen extends StatefulWidget {
//   const QuizScreen({super.key});

//   @override
//   State<QuizScreen> createState() {
//     return _QuizScreen();
//   }
// }

// class _QuizScreen extends State<QuizScreen> {
//   Widget? activeScreen; //? make it clear that this variable can be null.

//   @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }

//   switchScreen() {
//     setState(() {
//       activeScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 4, 95, 122),
//                 Color.fromARGB(255, 2, 122, 138)
//               ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//             ),
//             child: activeScreen),
//       ),
//     );
//   }
// }
