import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Dashboardpage.dart';
import 'package:login/Registrationpage.dart';

class WideBody extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  WideBody(this.emailController, this.passwordController);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth*0.28,
          padding: EdgeInsets.only(top: screenHeight * 0.25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In to \nyour Pinion Dashboard',
                style: TextStyle(
                  fontSize: screenWidth * 0.039,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text(
                "If you don't have an account",
                style: TextStyle(
                    fontSize: screenWidth * 0.015,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.014,
              ),
              Row(
                children: [
                  Text(
                    "You can",
                    style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()));
                    },
                    child: Text(
                      "Register here!",
                      style: TextStyle(
                          fontSize: screenWidth * 0.015,
                          color: Color.fromARGB(255, 66, 58, 183),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              // Image.asset(
              //   'images/illustration-2.png',
              //   width: 400,
              // ),
            ],
          ),
        ),
        SizedBox(width:screenWidth*0.01),
        Container(
          padding: EdgeInsets.only(top: screenHeight * 0.25),
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'images/Asset-2@2x.png',
              width: screenWidth*0.23,
            ),
          ),
        ),
        // MediaQuery.of(context).size.width >= 1300 //Responsive
        //     ? Image.asset(
        //         'images/illustration-1.png',
        //         width: 300,
        //       )
        //     : SizedBox(),
        SizedBox(width: 20),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeight / 6),
          child: Container(
            padding: EdgeInsets.all(screenWidth*0.03),
            width: screenWidth*0.28,
            child: _formLogin(context),
          ),
        )
      ],
    );
  }

  Widget _formLogin(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter email or Phone number',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          controller: emailController,
        ),
        SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // Make the children stretch horizontally
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.blueGrey[50],
                labelStyle: TextStyle(fontSize: 12),
                contentPadding: EdgeInsets.only(left: 30),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade50),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              controller: passwordController,
            ),
            SizedBox(
                height:
                    10), // Add some space between the TextField and the "Forget Password?" text
            Positioned(
              left: 80,
              child: TextButton(
                onPressed: () {
                  // Add your forget password logic here
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 66, 58, 183),
              ),
            ],
          ),
          child: ElevatedButton(
            child: Container(
                width: double.infinity,
                height: 50,
                child: Center(child: Text("Sign In"))),
            onPressed: () async {
              try {
                // Sign in with email and password using Firebase Auth
                UserCredential userCredential =
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                );
    
                if (userCredential.user != null) {
                  // Successful login, navigate to the dashboard
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                } else {
                  // Handle login error
                }
              } catch (e) {
                print('Error during login: $e');
                // Handle login error
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 66, 58, 183),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(height: 40),
        Row(children: [
          Expanded(
            child: Divider(
              color: Colors.grey[300],
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Or continue with"),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey[400],
              height: 50,
            ),
          ),
        ]),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _loginWithButton(image: 'images/google.png'),
            _loginWithButton(image: 'images/github.png', isActive: true),
            _loginWithButton(image: 'images/facebook.png'),
          ],
        ),
      ],
    );
  }

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 10,
                  blurRadius: 30,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade400),
            ),
      child: Center(
          child: Container(
        decoration: isActive
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 2,
                    blurRadius: 15,
                  )
                ],
              )
            : BoxDecoration(),
        child: Image.asset(
          '$image',
          width: 35,
        ),
      )),
    );
  }
}
