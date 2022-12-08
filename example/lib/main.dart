import 'package:awesome_otp_screen/awesome_otp_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  Future<String> validateOtp(String otp) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    if (otp == "123456") {
      return "Done";
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const SuccessfulOtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AwesomeOtpScreen.withGradientBackground(
        topColor: Colors.green.shade200,
        bottomColor: Colors.greenAccent.shade700,
        otpLength: 4,
        validateOtp: validateOtp,
        routeCallback: moveToNextScreen,
        themeColor: Colors.white,
        titleColor: Colors.white,
        title: "Phone Number Verification",
        subTitle: "Enter the code sent to \n +880170020020",
        icon: Image.asset(
          'assets/images/phone_logo.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class SuccessfulOtpScreen extends StatelessWidget {
  const SuccessfulOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "Otp verification successful",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
