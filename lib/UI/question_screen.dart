// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:Trivia/UI/home_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  // List<Icon> answericon = [];
  bool isvisible = false;

  // num bprog = questionNumber ~/ prog;
  late Color MyColors1 = Colors.white;
  late Color MyColors2 = Colors.white;
  late Color MyColors3 = Colors.white;
  late Color MyColors4 = Colors.white;
  late Color option1C = Color.fromARGB(255, 8, 84, 146);
  late Color option2C = Color.fromARGB(255, 8, 84, 146);
  late Color option3C = Color.fromARGB(255, 8, 84, 146);
  late Color option4C = Color.fromARGB(255, 8, 84, 146);
  int questionNumber = 0;
  List<String> questions = [
    "In which Italian city can you find the Colosseum?",
    "Who sang the title song for the latest Bond film, No Time to Die?",
    "Which flies a green, white, and orange (in that order) tricolor flag?",
    "What company makes the Xperia model of smartphone?",
  ];

  List<String> option1 = [
    "Venice",
    "Adele",
    "Ireland",
    "Samsung",
  ];
  List<String> option2 = [
    "Rome",
    "Sam Smith",
    "Ivory Coast",
    "Sony",
  ];
  List<String> option3 = [
    "Naples",
    "Billie Eilish",
    "Italy",
    "Nokia",
  ];
  List<String> option4 = [
    "Milan",
    "Atif Aslam",
    "Pakistan",
    "Vivo",
  ];
  List<String> answers = [
    "Rome",
    "Billie Eilish",
    "Italy",
    "Sony",
  ];

  void checkedAnswer(String pickedAnswer) {
    String correctAnswer = answers[questionNumber];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double prog = ((questionNumber + 1) / answers.length);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xfff2E95F6),
            Color(0xfff566FEC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 500,
                        child: LinearPercentIndicator(
                          lineHeight: 20,
                          barRadius: Radius.circular(35),
                          progressColor: Colors.black,
                          percent: prog,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container(
                      height: 250,
                      width: 500,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            questions[questionNumber],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        InkWell(
                            onTap: () {
                              isvisible = true;
                              setState(() {
                                if (answers[questionNumber] ==
                                    option1[questionNumber]) {
                                  MyColors1 = Colors.green;
                                  option1C = Colors.white;
                                } else {
                                  MyColors1 = Colors.red;
                                  option1C = Colors.white;
                                }
                                {}
                              });
                              checkedAnswer(option1[questionNumber]);
                            },
                            child: Button(
                              options: option1[questionNumber],
                              myColor: MyColors1,
                              textColor: option1C,
                            )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                if (answers[questionNumber] ==
                                    option2[questionNumber]) {
                                  MyColors2 = Colors.green;
                                  option2C = Colors.white;
                                } else {
                                  MyColors2 = Colors.red;
                                  option2C = Colors.white;
                                }
                                {}
                              });
                              //  setState(() {
                              //   if (option2[questionNumber] ==
                              //       answers[questionNumber]) {
                              //     ButtonRed(options: option2[questionNumber]);
                              //   }
                              // }
                              // );
                              isvisible = true;
                              checkedAnswer(option2[questionNumber]);
                            },
                            child: Button(
                              options: option2[questionNumber],
                              myColor: MyColors2,
                              textColor: option2C,
                            )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                if (answers[questionNumber] ==
                                    option3[questionNumber]) {
                                  MyColors3 = Colors.green;
                                  option3C = Colors.white;
                                } else {
                                  MyColors3 = Colors.red;
                                  option3C = Colors.white;
                                }
                                {}
                              });
                              isvisible = true;
                              checkedAnswer(option3[questionNumber]);
                            },
                            child: Button(
                              options: option3[questionNumber],
                              myColor: MyColors3,
                              textColor: option3C,
                            )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                if (answers[questionNumber] ==
                                    option4[questionNumber]) {
                                  MyColors4 = Colors.green;
                                  option4C = Colors.white;
                                } else {
                                  MyColors4 = Colors.red;
                                  option4C = Colors.white;
                                }
                                {}
                              });
                              isvisible = true;
                              checkedAnswer(option4[questionNumber]);
                            },
                            child: Button(
                              options: option4[questionNumber],
                              myColor: MyColors4,
                              textColor: option4C,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  isvisible
                      ? InkWell(
                          onTap: () {
                            MyColors1 = Colors.white;
                            MyColors2 = Colors.white;
                            MyColors3 = Colors.white;
                            MyColors4 = Colors.white;
                            option1C = Color.fromARGB(255, 8, 84, 146);
                            option2C = Color.fromARGB(255, 8, 84, 146);
                            option3C = Color.fromARGB(255, 8, 84, 146);
                            option4C = Color.fromARGB(255, 8, 84, 146);

                            isvisible = false;
                            setState(() {
                              if (questionNumber >= questions.length - 1) {
                                Alert(
                                  context: context,
                                  type: AlertType.error,
                                  title: "Quiz Alert",
                                  desc:
                                      "Now this quiz has been ended please chose another level",
                                  buttons: [
                                    DialogButton(
                                      child: const Text(
                                        "Go to Home",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                          )),
                                      width: 200,
                                    )
                                  ],
                                ).show();
                              } else {
                                // prog = questionNumber / questions.length;
                                questionNumber++;
                                // prog++;
                              }
                            });
                          },
                          child: Container(
                            child: Center(
                                child: Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 8, 84, 146)),
                            )),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )
                      : SizedBox(
                          height: 250,
                          width: 250,
                        )

                  // Padding(
                  //   padding: const EdgeInsets.all(16.0),
                  //   child: SingleChildScrollView(
                  //     scrollDirection: Axis.horizontal,
                  //     child: Container(
                  //       // width: 500,
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(8)),
                  //       child: Row(
                  //         children: te,
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String options;
  final Color myColor;
  final Color textColor;
  Button({
    Key? key,
    required this.options,
    required this.myColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: myColor,
            // border: Border.all(),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            options,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: textColor),
          ),
        ),
      ),
    );
  }
}
