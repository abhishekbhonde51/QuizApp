import 'package:flutter/material.dart';

void main() => runApp(const Quiz());

class Quiz extends StatelessWidget {
  const Quiz({super.key});

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
  List<Map> allQuestions = [
    {
      "question": "Which of the following is a key principle of DevOps?",
      "Options": [
        " Siloed teams and departments",
        "Manual deployment processes.",
        "Continuous integration and delivery",
        "Lengthy release cycles"
      ],
      "answerIndex": 3
    },
    {
      "question": "Which of the following is a key principle of DevOps?",
      "Options": [
        " Siloed teams and departments",
        "Manual deployment processes.",
        "Continuous integration and delivery",
        "Lengthy release cycles"
      ],
      "answerIndex": 1
    },
    {
      "question": "who of the following is a key principle of DevOps?",
      "Options": [
        " Siloed teams and departments",
        "Manual deployment processes.",
        "Continuous integration and delivery",
        "Lengthy release cycles"
      ],
      "answerIndex": 0
    },
    {
      "question": "how of the following is a key principle of DevOps?",
      "Options": [
        " Siloed teams and departments",
        "Manual deployment processes.",
        "Continuous integration and delivery",
        "Lengthy release cycles"
      ],
      "answerIndex": 2
    },
    {
      "question": "what of the following is a key principle of DevOps?",
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
  int selectedAns = -1;
  int numberOfCorrectAns = 0;
  MaterialStateProperty<Color?> checkAns(int buttonIndex) {
    if (selectedAns != -1) {
      if (buttonIndex == allQuestions[questionCounter]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (selectedAns == buttonIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAns == -1) {
      return;
    }
    if (selectedAns == allQuestions[questionCounter]["answerIndex"]) {
      numberOfCorrectAns += 1;
    }
    if (selectedAns != -1) {
      if (questionCounter == allQuestions.length - 1) {
        setState(() {
          questionScreen = false;
        });
      }
      selectedAns = -1;
      setState(() {
        questionCounter += 1;
      });
    }
  }

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
          backgroundColor: Colors.teal,
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
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAns(0),
                  fixedSize: MaterialStateProperty.all(Size(400, 50)),
                ),
                onPressed: () {
                  if (selectedAns == -1) {
                    setState(() {
                      selectedAns = 0;
                    });
                  }
                },
                child: Text(
                  "A.${allQuestions[questionCounter]["Options"][0]},",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if (selectedAns == -1) {
                    setState(() {
                      selectedAns = 1;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAns(1),
                  fixedSize: MaterialStateProperty.all(Size(400, 50)),
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
                onPressed: () {
                  if (selectedAns == -1) {
                    setState(() {
                      selectedAns = 2;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAns(2),
                  fixedSize: MaterialStateProperty.all(Size(400, 50)),
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
                onPressed: () {
                  if (selectedAns == -1) {
                    setState(() {
                      selectedAns = 3;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAns(3),
                  fixedSize: MaterialStateProperty.all(Size(400, 50)),
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
            validateCurrentPage();
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Color.fromARGB(255, 163, 114, 40),
          ),
        ),
      );
    } else {
      return Scaffold(
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
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image(
                  image: NetworkImage(
                      'https://media.istockphoto.com/id/1168757141/vector/gold-trophy-with-the-name-plate-of-the-winner-of-the-competition.jpg?s=612x612&w=0&k=20&c=ljsP4p0yuJnh4f5jE2VwXfjs96CC0x4zj8CHUoMo39E=')),
              Text(
                "You have completed the quiz",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "$numberOfCorrectAns/${allQuestions.length}",
              ),
              ElevatedButton(
                onPressed: () {
                  questionCounter = 0;
                  questionScreen = true;
                  numberOfCorrectAns = 0;
                  selectedAns = -1;
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return isQuestionscreen();
  }
}
