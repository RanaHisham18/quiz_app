import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          backgroundColor: Colors.pink,
        ),
        body: ExamPage(),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  @override
  ExamPageState createState() => ExamPageState();
//creating the state
}

class ExamPageState extends State<ExamPage> {
  List<Padding> answerResults = [];
  List<String> questions = [
    'Is the numbers of planets inside the solar system eight planets?',
    'Is the cat from carnivores animals?',
    'Is china located in Africa?',
    'Is the earth flat and not circular?'
  ];
  int questionNumber = 0;
  List<String> images = [
    'images/image-1.jpg',
    'images/image-2.jpg',
    'images/image-3.jpg',
    'images/image-4.jpg'
  ];
  List<bool> answers = [true, true, false, false];

  Widget build(BuildContext context) {
    return Column(
      //to write widgets here
      children: [
        Row(
          children: answerResults,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(images[questionNumber]),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    questions[questionNumber],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.8),
                child: ElevatedButton(
                  onPressed: () {
                    bool correctAnswer = answers[questionNumber];
                    if (correctAnswer == true) {
                      answerResults.add(
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.green,
                          ),
                        ),
                      );
                    } else {
                      answerResults.add(
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.thumb_down,
                            color: Colors.red,
                          ),
                        ),
                      );
                    }

                    setState(() {
                      questionNumber++;
                    });
                  },
                  child: Text(
                    'True',
                    style: TextStyle(fontSize: 22.0, color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.8),
              child: ElevatedButton(
                onPressed: () {
                  bool correctAnswerTwo = answers[questionNumber];
                  if (correctAnswerTwo == false) {
                    answerResults.add(
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                        ),
                      ),
                    );
                  } else {
                    answerResults.add(
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.thumb_down,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                  if  (questionNumber >= questions.length - 1 ){
                    questionNumber = 0;
                  // AlertDialog(
                  //   title: Text("You are done!"),
                  // );

                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 22.0, color: Colors.black),
                ),
              ),
            )),
          ],
        ),
      ],
    );
  }
}


