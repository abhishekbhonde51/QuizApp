import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App',
      home: QuizUIApp(),
    );
  }
}

class QuizUIApp extends StatefulWidget {
  const QuizUIApp({super.key});
  State<QuizUIApp> createState() => _QuizUIAppState();
}

class _QuizUIAppState extends State<QuizUIApp> {
  @override
  Widget build(BuildContext context) {
    List<Map> allQuestions = [
      {
        "question": "Which of the following is a key principle of DevOps?",
        "Options": [
          " Siloed teams and departments",
          "Manual deployment processes.",
          "Continuous integration and delivery",
          "Lengthy release cycles"
        ],
        "answerIndex": 2
      },
      {
        "question": "Which of the following is a key principle of DevOps?",
        "Options": [
          " Siloed teams and departments",
          "Manual deployment processes.",
          "Continuous integration and delivery",
          "Lengthy release cycles"
        ],
        "answerIndex": 2
      },
      {
        "question": "Which of the following is a key principle of DevOps?",
        "Options": [
          " Siloed teams and departments",
          "Manual deployment processes.",
          "Continuous integration and delivery",
          "Lengthy release cycles"
        ],
        "answerIndex": 2
      },
      {
        "question": "Which of the following is a key principle of DevOps?",
        "Options": [
          " Siloed teams and departments",
          "Manual deployment processes.",
          "Continuous integration and delivery",
          "Lengthy release cycles"
        ],
        "answerIndex": 2
      },
      {
        "question": "Which of the following is a key principle of DevOps?",
        "Options": [
          " Siloed teams and departments",
          "Manual deployment processes.",
          "Continuous integration and delivery",
          "Lengthy release cycles"
        ],
        "answerIndex": 2
      },
    ];
    bool questionScreen = true;
    int questionCounter = 0;
    Scaffold isQuestionscreen() {
      if (questionScreen == true) {
        return Scaffold(
          backgroundColor: Color.fromARGB(225, 255, 255, 255),
          appBar: AppBar(
            title: const Text(
              'QuizApp',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Questions :",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${questionCounter + 1}/${allQuestions.length}",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.normal),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 80,
                width: 380,
                child: Text(
                  allQuestions[questionCounter]["question"],
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(450, 50)),
                  ),
                  child: Text(
                    "A.${allQuestions[questionCounter]["Options"][0]},",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(450, 50)),
                  ),
                  child: Text(
                    "B.${allQuestions[questionCounter]["Options"][1]},",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(450, 50)),
                  ),
                  child: Text(
                    "C.${allQuestions[questionCounter]["Options"][2]},",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(450, 50)),
                  ),
                  child: Text(
                    "D.${allQuestions[questionCounter]["Options"][3]},",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                questionCounter++;
              });
            },
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.forward,
              color: Colors.orange,
            ),
          ),
        );
      } else {
        return Scaffold();
      }
    }

    return isQuestionscreen();
  }
}
