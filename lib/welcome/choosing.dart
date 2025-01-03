import 'package:flutter/material.dart';
import 'package:masken/welcome/signupA.dart';
import 'package:masken/welcome/signupC.dart';

class Choosing extends StatelessWidget {
  const Choosing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Color overlay covering the entire screen

          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/House.jfif"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: const Color(0xFF052659)
                .withOpacity(0.5), // Semi-transparent overlay
          ),
          // Overlay with content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "إنشاء حساب جديد:",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Cairo",
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "أي نوع من الحسابات  تريد إنشاؤه؟",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(370.0, 85.0)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signupa()));
                    },
                    child: const Text(
                      "مكتب عقارات",
                      style: TextStyle(
                        color: Color(0xff052659),
                        fontFamily: 'Cairo',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(370.0, 85.0)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signupc()));
                    },
                    child: const Text(
                      "عميل",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Color(0xff052659),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
