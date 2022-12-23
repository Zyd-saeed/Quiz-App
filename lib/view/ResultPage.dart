// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/view/FirstPage.dart';

// ignore: camel_case_types
class result extends StatelessWidget {
  const result({super.key, required this.mark});
  final int mark;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              //             Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "\nResult          ",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        )),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_R9Ur5zBozU.json'),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: CircularPercentIndicator(
                    backgroundColor: Colors.grey,
                    progressColor: Colors.green,
                    animation: true,
                    radius: 80,
                    lineWidth: 18.0,
                    percent: mark / 12,
                    animationDuration: 1000,
                    reverse: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text(
                      '$mark/12',
                      style: GoogleFonts.mulish(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230, left: 100),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Api_2()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text('Awesome!'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    '\n     Congratulations\nYou Passed the exam',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
