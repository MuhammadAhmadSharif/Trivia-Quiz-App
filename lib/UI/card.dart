// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:Trivia/UI/home_screen.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  // List<Icon> answericon = [];
  bool isvisible = false;
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
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  //   child: Container(
                  //     width: 500,
                  //     // decoration: BoxDecoration(border: Border.all()),
                  //     child: Text(
                  //       "Question ${questionNumber + 1} / ${questions.length}",
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 18,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Container(
                              width: 200,
                              // height: 600,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                              // height: 700,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 280,
                                      width: 280,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            questions[index],
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
                                    width: 250,
                                    child: Column(
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              isvisible = true;
                                              setState(() {
                                                if (answers[index] ==
                                                    option1[index]) {
                                                  MyColors1 = Colors.green;
                                                  option1C = Colors.white;
                                                } else {
                                                  MyColors1 = Colors.red;
                                                  option1C = Colors.white;
                                                }
                                                {}
                                              });
                                              checkedAnswer(option1[index]);
                                            },
                                            child: Button(
                                              options: option1[index],
                                              myColor: MyColors1,
                                              textColor: option1C,
                                            )),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (answers[index] ==
                                                    option2[index]) {
                                                  MyColors2 = Colors.green;
                                                  option2C = Colors.white;
                                                } else {
                                                  MyColors2 = Colors.red;
                                                  option2C = Colors.white;
                                                }
                                                {}
                                              });

                                              isvisible = true;
                                              checkedAnswer(option2[index]);
                                            },
                                            child: Button(
                                              options: option2[index],
                                              myColor: MyColors2,
                                              textColor: option2C,
                                            )),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (answers[index] ==
                                                    option3[index]) {
                                                  MyColors3 = Colors.green;
                                                  option3C = Colors.white;
                                                } else {
                                                  MyColors3 = Colors.red;
                                                  option3C = Colors.white;
                                                }
                                                {}
                                              });
                                              isvisible = true;
                                              checkedAnswer(option3[index]);
                                            },
                                            child: Button(
                                              options: option3[index],
                                              myColor: MyColors3,
                                              textColor: option3C,
                                            )),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (answers[index] ==
                                                    option4[index]) {
                                                  MyColors4 = Colors.green;
                                                  option4C = Colors.white;
                                                } else {
                                                  MyColors4 = Colors.red;
                                                  option4C = Colors.white;
                                                }
                                                {}
                                              });
                                              isvisible = true;
                                              checkedAnswer(option4[index]);
                                            },
                                            child: Button(
                                              options: option4[index],
                                              myColor: MyColors4,
                                              textColor: option4C,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        onIndexChanged: (value) {
                          MyColors1 = Colors.white;
                          MyColors2 = Colors.white;
                          MyColors3 = Colors.white;
                          MyColors4 = Colors.white;
                          option1C = Color.fromARGB(255, 8, 84, 146);
                          option2C = Color.fromARGB(255, 8, 84, 146);
                          option3C = Color.fromARGB(255, 8, 84, 146);
                          option4C = Color.fromARGB(255, 8, 84, 146);
                        },
                        itemCount: questions.length,
                        itemWidth: 280.0,
                        itemHeight: 650.0,
                        layout: SwiperLayout.STACK,
                      )),

                  SizedBox(
                    height: 16,
                  ),

                  InkWell(
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
                          questionNumber++;
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
                  ),

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
                  //         children: answericon,
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
