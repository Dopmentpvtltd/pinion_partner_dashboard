import 'package:flutter/material.dart';

String _hoveredUpdateInfoButton = '';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

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
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),

              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  _sendResetPasswordEmail(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 22,
                    horizontal: 55,
                  ),
                ),
                child: Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff0d47a1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _sendResetPasswordEmail(BuildContext context) {
    final email = emailController.text;
  }
}
