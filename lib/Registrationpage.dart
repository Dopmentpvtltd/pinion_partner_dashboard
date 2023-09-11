import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(home: RegistrationPage()));
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String _hoveredUpdateInfoButton = '';
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  TextEditingController _organizationController = TextEditingController();
  TextEditingController _websiteController = TextEditingController();
  bool _isChecked1 = true;
  bool _isChecked2 = true;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _register() async {
  try {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );

    final user = userCredential.user;
    if (user != null) {
      // Send email verification
      await user.sendEmailVerification();
 
      // Store additional user data in Cloud Firestore
      await _firestore.collection('users').doc(user.uid).set({
        'email': _emailController.text,
      });

  
      _showNotification('Verification email sent to your account.');
       Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>LoginPage()));
  
    }
  } catch (e) {
    // Handle registration error
    _showNotification('Error during registration: $e');
  }
}

void _showNotification(String message) {
  final snackBar = SnackBar(content: Text(message));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}



  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 1000, // Half of the screen width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  color:
                      Colors.white, // You can set the desired background color
                ),
                child: Column(
                  children: [
                    CustomHeader(),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Full Name',
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Email Address',
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Username',
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                              padding: EdgeInsets.all(0.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 123, 122, 122),
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(9.0)),
                              child: PhoneNumberInputPage()),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: _obscureText,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: _obscureText,
                            controller: _confirmpasswordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              hintText: 'Confirm Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: _organizationController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Organization Name',
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: _websiteController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: 'Website URL',
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _isChecked1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked1 = value!;
                                  });
                                },
                              ),
                              Text(
                                'I am ready to submit a Press Release within the next 48 hours.',
                                style: TextStyle(
                                  color: _isChecked1
                                      ? Colors.black
                                      : Colors.red, // Change text color
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked2 = value!;
                                  });
                                },
                              ),
                              Text(
                                "I have Agreed to the",
                                style: TextStyle(
                                  color: _isChecked2
                                      ? Colors.black
                                      : Colors.red, // Change text color
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _launchURL(
                                      'https://pinionnewswire.com/terms-of-services/');
                                },
                                child: Text(
                                  " Terms And Conditions",
                                  style: TextStyle(
                                    color: Color(0xff0d47a1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: ElevatedButton(
  onPressed: (_isChecked1 && _isChecked2)
    ? () {
      String password = _passwordController.text;
      String confirmPassword = _confirmpasswordController.text;

      if (password == confirmPassword) {
        _register(); // Call the _register method
      } else {
        // Handle password mismatch error
        _showNotification('Passwords do not match.');
      }
    }
    : null,// Disable button if checkboxes are not both checked
                              style: ElevatedButton.styleFrom(
                                primary: _isChecked1 && _isChecked2
                                    ? Color(0xFF0D47A1)
                                    : Colors.white,
                                padding: EdgeInsets.symmetric(
                                  vertical: 26.0,
                                  horizontal: 49.0,
                                ),
                              ),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: _isChecked1 && _isChecked2
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 1000,
                decoration: BoxDecoration(
                  color: Color(0xff0d47a1),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/Pinion-Partners-Logo.png',
                        color: Colors.white,
                        width: 300,
                      ),
                    ),
                    SizedBox(height: 100),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome !',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Please sign in to access your account and to stay connected with the pinion newswire',
                      textAlign: TextAlign.center, // Add more text here
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = '2';
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = '';
                          });
                        },
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                            // Implement your update information logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hoveredUpdateInfoButton == '2'
                                ? Color(0xFF0D47A1)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(
                              vertical: 26.0,
                              horizontal: 49.0,
                            ),
                          ),
                          child: Text(
                            'Already Have An Account ',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: _hoveredUpdateInfoButton == '2'
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      width: 350,
                      child: Image.asset(
                        "images/pr.png"
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Center the row horizontally
      crossAxisAlignment:
          CrossAxisAlignment.center, // Center the row vertically
      children: [
        Container(
          height: 100,
          width: 240,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Create An Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//phone number

class PhoneNumberInputPage extends StatefulWidget {
  @override
  _PhoneNumberInputPageState createState() => _PhoneNumberInputPageState();
}

class _PhoneNumberInputPageState extends State<PhoneNumberInputPage> {
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'US');

  // void _submitPhoneNumber() {
  //   // Handle the submitted phone number
  //   print('Selected country code: ${_phoneNumber.dialCode}');
  //   print('Entered phone number: ${_phoneNumber.phoneNumber}');
  // }

  @override
  Widget build(BuildContext context) {
    var padding2 = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber phoneNumber) {
              setState(() {
                _phoneNumber = phoneNumber;
              });
            },
            // selectorType: PhoneInputSelectorType.DIALOG,
            selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.DIALOG,
            ),
            ignoreBlank: false,
            autoValidateMode: AutovalidateMode.disabled,
            selectorTextStyle: TextStyle(color: Colors.black),
            initialValue: _phoneNumber,
            hintText: 'Phone Number',
            errorMessage: 'Invalid phone number',
          ),
        ],
      ),
    );
    return padding2;
  }
}
