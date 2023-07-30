import 'package:flutter/material.dart';
void main(){
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          backgroundColor: Colors.pink,
        ),
        body: ExamPage() ,
      ),
    );
  }
}

class ExamPage extends StatefulWidget{
  @override
 ExamPageState createState() => ExamPageState();
  //creating the state
}

class ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //to write widgets here
      children: [
        const Row(
          children: [
            Padding(padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
            ),
            Padding(padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.thumb_down,
                color: Colors.red,
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.thumb_up,
                color: Colors.green,
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.thumb_down,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset('images/image-1.jpg'),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Is the numbers of planets inside the solar system eight planets?',
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
                    onPressed: () {},
                    child: Text('True',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black
                    ),),
                  ),
                )
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('False',
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black
                      ),),
                  ),
                )
            ),
          ],
        ),
      ],
    );
  }
}
