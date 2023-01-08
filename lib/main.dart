import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/images/background.png'),
                    fit: BoxFit.cover)),
          ),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              AccountTextField(),
              MyButton(),
            ]),
          ),
          // ),
        ]));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 52,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(28, 27, 27, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26))),
          onPressed: () => {},
          child: Text(
            "Sign In",
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Colors.white, fontSize: 24)),
          )),
    );
  }
}

class AccountTextField extends StatelessWidget {
  const AccountTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Email',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
          SizedBox(
            width: 355,
            child: TextField(
              style: TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                hintText: "example@email.com",
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 158, 158, 158)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 111, 1, 116)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Text('Email'),
          SizedBox(
              width: 355,
              child: TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: '***********',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 158, 158, 158)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 111, 1, 116)),
                  ),
                ),
              )),
          SizedBox(height: 27)
        ],
      ),
    );
  }
}
