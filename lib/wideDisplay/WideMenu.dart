import 'package:flutter/material.dart';
import 'package:login/Registrationpage.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:login/Dashboard_buttons/Used/HoverButton.dart';

class WideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo widget on the left side
          Container(
            child: Image.asset(
              'assets/images/Pinion-Partners-Logo.png', // Replace with your actual logo image path
              width:
                  screenWidth * 0.1, // Set the desired width for a larger logo
              height: screenHeight *
                  0.1, // Set the desired height for a larger logo
            ),
          ),

          // Empty space to separate logo and menu items
          SizedBox(width: 30),

          // Menu items aligned to the right
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _menuItem(screenWidth, title: 'Home'),
              _menuItem(screenWidth, title: 'Pricing'),
              _menuItem(screenWidth, title: 'Contact'),
              _menuItem(screenWidth, title: 'About us'),
              _menuItem(screenWidth, title: 'Sign In', isActive: true),
              Container(child: _registerButton(context))
            ],
          ),
        ],
      ),
    );
  }

  // ... Rest of the Menu class remains unchanged
}

Widget _menuItem(double screenWidth,
    {String title = 'Title Menu', isActive = false}) {
  return Padding(
    padding: EdgeInsets.only(right: screenWidth * 0.04),
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (title == 'Home') {
            _launchURL(
                'https://pinionnewswire.com/'); // Replace with your desired URL
          }
          if (title == 'Pricing') {
            _launchURL(
                'https://pinionnewswire.com/pricings/'); // Replace with your desired URL
          }
          if (title == 'Contact') {
            _launchURL(
                'https://pinionnewswire.com/contact/#contact'); // Replace with your desired URL
          }
          if (title == 'About us') {
            _launchURL(
                'https://pinionnewswire.com/about/'); // Replace with your desired URL
          }
        },
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontSize: screenWidth*0.012,
                fontWeight: FontWeight.bold,
                color:
                    isActive ? Color.fromARGB(255, 66, 58, 183) : Colors.grey,
              ),
            ),
            SizedBox(height: 6),
            isActive
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 66, 58, 183),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    ),
  );
}

// Function to launch a URL
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget _registerButton(BuildContext context) {
  // double screenWidth = MediaQuery.of(context).size.width;
  return HoverButton(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) =>
                  RegistrationPage()), // Replace 'NextPage()' with the desired page.
        );
      },
      text: "Register",
  );
}
