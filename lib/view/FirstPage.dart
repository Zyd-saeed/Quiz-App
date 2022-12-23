// ignore_for_file: file_names, must_be_immutable
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/view/FaildPage.dart';
import 'package:quiz_app/view/ResultPage.dart';

import '../Model/Model.dart';
import '../Providers/provider.dart';

// ignore: camel_case_types
class Api_2 extends StatelessWidget {
  Api_2({super.key});
  List<SamplePost> samplepost = [];
  int index = 0;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<provider1>(builder: (context, getdata, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Center(
              child: Text(
            'Quiz  ',
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
          backgroundColor: Colors.white,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.menu_open, color: Colors.black),
            )
          ],
        ),
        body: ListView(
          children:<Widget>[
            FutureBuilder(
                future: getData(),
                // ignore: non_constant_identifier_names
                builder: (context, Snapshot) {
                  if (Snapshot.hasData) {
                    return Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 260),
                        child: Container(
                            height: 45,
                            width: 90,
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(2.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15)),
                            // ignore: avoid_unnecessary_containers
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "   ${index + 1}/12",
                                  style: const TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w700),
                                ),
                              ),
                            )),
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(2.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 180,
                          width: 350,
                          margin: const EdgeInsets.all(10),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              samplepost[0].questions[index].question,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 47,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Center(
                                    child: Icon(
                                  Icons.question_mark,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                          ),
                          const Text(
                            'choose an answer',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              height: 50,
                              width: 330,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  backgroundColor: MaterialStateColor.resolveWith(
                                    ((states) => getdata.firstbutton
                                        ? Colors.black
                                        : Colors.blue),
                                  ),
                                ),
                                onPressed: () {
                                  getdata.button1();
                                  getdata.option0();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text('A.'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(samplepost[0]
                                          .questions[index]
                                          .answers[0]
                                          .toString()),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: SizedBox(
                              width: 330,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  backgroundColor: MaterialStateColor.resolveWith(
                                    ((states) => getdata.secondbutton
                                        ? Colors.black
                                        : Colors.blue),
                                  ),
                                ),
                                onPressed: () {
                                  getdata.button2();
                                  getdata.option1();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text('B.'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(samplepost[0]
                                          .questions[index]
                                          .answers[1]
                                          .toString()),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: SizedBox(
                              width: 330,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  backgroundColor: MaterialStateColor.resolveWith(
                                    ((states) => getdata.tiredbutton
                                        ? Colors.black
                                        : Colors.blue),
                                  ),
                                ),
                                onPressed: () {
                                  getdata.button3();
                                  getdata.option2();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text('C.'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(samplepost[0]
                                          .questions[index]
                                          .answers[2]
                                          .toString()),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: 330,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  backgroundColor: MaterialStateColor.resolveWith(
                                    ((states) => getdata.fourthbutton
                                        ? Colors.black
                                        : Colors.blue),
                                  ),
                                ),
                                onPressed: () {
                                  getdata.button4();
                                  getdata.option3();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text('D.'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(samplepost[0]
                                          .questions[index]
                                          .answers[3]
                                          .toString()),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190, top: 30),
                            child: SizedBox(
                              height: 60,
                              width: 130,
                              child: ElevatedButton(
                                onPressed: () {
                                      if (getdata.selectedoptions ==
                                          samplepost[0]
                                              .questions[index]
                                              .correctIndex) {
                                          score++;
                                      }  
                                  if (index < 11) {
                                    index++;
                                  } 
                                  else {
                                    if (score > 4) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => result(
                                                    mark: score,
                                                  )));
                                    } else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Faildpage(
                                                    mark: score,
                                                  )));
                                    }
                                  }
                                  getdata.optionRe();
                                  getdata.buttonRe();
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 5,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Next',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      // <-- Icon
                                      Icons.arrow_forward_outlined,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]);
                  } else {
                    return const Center(child: Padding(
                      padding: EdgeInsets.only(top: 380),
                      child: CircularProgressIndicator(),
                    ));
                  }
                }),
              ],
        ),
      );
    });
  }

  Future<List<SamplePost>> getData() async {
    final response = await http
        .get(Uri.parse('https://637dbfffcfdbfd9a639bba1e.mockapi.io/sample'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplepost.add(SamplePost.fromJson(index));
      }
      return samplepost;
    } else {
      return samplepost;
    }
  }
}
