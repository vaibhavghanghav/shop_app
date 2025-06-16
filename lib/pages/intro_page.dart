import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Padding(
            padding: EdgeInsets.only(left: 80, right: 80, top: 160, bottom: 20),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: [Colors.yellow, Colors.green, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Icon(
                Icons.offline_bolt_rounded,
                size: 250,
                color: Colors.white,
              ),
            ),
          ),

          // we delever groceries online
          Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "We Deliver groceries at B⚡LT`s speed",
              style: GoogleFonts.cabin(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 24),

          // fresh items everyday
          Text(
            "Fresh items every day",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),

          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
