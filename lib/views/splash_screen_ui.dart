import 'package:dti_love_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // Delay 3 second and open to IntroductionUI page
    Future.delayed(
        Duration(
          // days: 366,
          seconds: 3,
          
        ),
        // until 3 sec open to IntroductionUI page
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeUI(),
              ),
            ));

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_welcome.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "DTI Cake Shop",
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CircularProgressIndicator(
                color: Colors.pink,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              Text(
                "ร้านเค้กในตำนาน",
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[300],
                ),
              ),
              Text(
                "Create by Dusit6552410011",
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
