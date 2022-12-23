
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:quiz_app/view/FirstPage.dart';

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  TextEditingController firstText = TextEditingController();
  TextEditingController secondText = TextEditingController();
  TextEditingController thirdText = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
              height: 554,
              width: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "\nFill this from for create new\n\t\t    account & continue\n\n",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade800),
                    ),
                    SizedBox(
                      height: 30,
                      width: 256,
                      child: TextFormField(
                          controller: firstText,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: "name", //babel text
                            prefixIcon: Icon(
                              Icons.mail_outline_outlined,
                              color: Colors.white,
                            ), //prefix iocn
                            labelStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.white), //label style

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: SizedBox(
                        height: 30,
                        width: 256,
                        child: TextFormField(
                            controller: secondText,
                            obscureText: true,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelText: "Password", //babel text
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ), //prefix iocn
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white), //label style
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 45),
                      child: SizedBox(
                        height: 30,
                        width: 256,
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelText: "Retype password", //babel text
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ), //prefix iocn
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white), //label style
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: SizedBox(
                        width: 272,
                        height: 60,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Api_2()));
                              });
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                            child: const Text('Sign up')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: RichText(
                        text: TextSpan(
                          text: 'Have another account?  ',
                          style: const TextStyle(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign in',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ]),
    );
  }
}
