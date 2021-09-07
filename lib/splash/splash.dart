import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_profile/homepage/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/statistic.png',
              width: MediaQuery.of(context).size.height,
            ),
            SizedBox(
              height: 56,
            ),
            Text(
              'Dashboard UI Profile',
              style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Colors.white),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Tidak ada yang instan, semuanya butuh proses.\n#MulaiBerproses yuk!',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
