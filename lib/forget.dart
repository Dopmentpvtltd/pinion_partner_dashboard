// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:math';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCROCE0_sqQkmEaOOJ8vMfuAngOloYy13A",
      authDomain: "pinion-dashboard.firebaseapp.com",
      projectId: "pinion-dashboard",
      storageBucket: "pinion-dashboard.appspot.com",
      messagingSenderId: "728065026848",
      appId: "1:728065026848:web:cdb76f6ef8302138514545",
      measurementId: "G-79KFV782W1",
    ),
  );
}

// ignore: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  String generatedOTP = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: TextStyle(
            color: Color(0xff0d47a1),
          ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Color(0xff0d47a1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Add your logo here
              Image.asset(
                'images/Pinion-Partners-Logo.png',
                color: Colors.white,
                width: 400,
                height: 200,
              ),
              SizedBox(height: 20.0),
              Text(
                'Enter your email address to reset your password:',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 500, // Set the desired width here
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: TextButton(
                      onPressed: () {
                        _generateAndSendOTP(context);
                      },
                      child: Text(
                        'Send OTP',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 231, 233, 235),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 500, // Set the desired width here
                child: TextField(
                  controller: otpController,
                  decoration: InputDecoration(
                    labelText: 'Enter OTP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  _verifyOTP(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white, // Text color when not hovered
                  padding: EdgeInsets.symmetric(
                    vertical: 22,
                    horizontal: 55,
                  ),
                  elevation: 5, // Shadow when not hovered
                  onSurface: Colors.grey, // Background color when hovered
                ),
                child: Text(
                  'Verify OTP',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _generateAndSendOTP(BuildContext context) async {
    final auth = FirebaseAuth.instance;
    generatedOTP = _generateRandomOTP();
    try {
      await auth.sendPasswordResetEmail(email: generatedOTP);
      // Generate a new OTP
      // Simulate sending the OTP via email (you can send it via your email service)
      print('Generated OTP: $generatedOTP');
      // OTP sent successfully
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('OTP sent successfully!'),
        ),
      );
    } catch (e) {
      // Handle errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error sending OTP: $e'),
        ),
      );
    }
  }

  void _verifyOTP(BuildContext context) {
    final enteredOTP = otpController.text;
    if (enteredOTP == generatedOTP) {
      // OTP verified successfully, navigate to the password reset screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              PasswordResetScreen(email: emailController.text),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid OTP. Please try again.'),
        ),
      );
    }
  }

  String _generateRandomOTP() {
    final random = Random();
    return random.nextInt(999999).toString().padLeft(6, '0');
  }
}

class PasswordResetScreen extends StatelessWidget {
  final String email;

  PasswordResetScreen({required this.email});

  // Add your password reset UI here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Reset'),
      ),
      body: Center(
        child: Text('Password reset screen for $email'),
      ),
    );
  }
}
