import 'package:flutter/material.dart';
import 'package:login/Registrationpage.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:login/Dashboard_buttons/Used/HoverButton.dart';

class MobileMenu extends StatefulWidget {
  @override
  State<MobileMenu> createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  bool isvisible = false;

  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo widget on the left side
              Container(
                child: Image.asset(
                  'assets/images/Pinion-Partners-Logo.png', // Replace with your actual logo image path
                  width: screenWidth *
                      0.25, // Set the desired width for a larger logo
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
                  Container(child: _registerButton(context)),
                  // Container(
                  //   child: Column(
                  //     children: [
                  //       Positioned(
                  //         top: 0,
                  //         left: 30,
                  //         child: IconButton(
                  //           icon: Icon(Icons.menu),
                  //           onPressed: () {
                  //             setState(() {
                  //               isvisible = !isvisible;
                  //             });
                  //           },
                  //         ),
                  //       ),
                  //       Visibility(
                  //         visible: isvisible,
                  //         child: PopupMenuButton(
                  //           itemBuilder: (BuildContext context) {
                  //             return [
                  //               PopupMenuItem<String>(
                  //                 value: 'item1',
                  //                 child: Column(
                  //                   children: _menuItems,
                  //                 ),
                  //               ),
                  //             ];
                  //           },
                  //           child: Column(
                  //                   children: _menuItems,
                  //                 ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  PopupMenuButton<String>(
                    icon: Icon(Icons.menu),
                    offset: Offset(0, 40), // Offset from the icon's position
                    padding: EdgeInsets.all(8), // Padding around the icon
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem<String>(
                          value: 'item1',
                          child: Container(
                            width: 200, // Width of the menu item
                            height: 45, // Height of the menu item
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.home),
                                SizedBox(width: 8),
                                _menuItem(title: 'Home'),
                              ],
                            ),
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'item2',
                          child: Container(
                            width: 200, // Width of the menu item
                            height: 45, // Height of the menu item
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.price_change_outlined),
                                SizedBox(width: 8),
                                _menuItem(title: 'Pricing'),
                              ],
                            ),
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'item2',
                          child: Container(
                            width: 200, // Width of the menu item
                            height: 45, // Height of the menu item
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.contact_mail_outlined),
                                SizedBox(width: 8),
                                _menuItem(title: 'Contact'),
                              ],
                            ),
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'item2',
                          child: Container(
                            width: 200, // Width of the menu item
                            height: 45, // Height of the menu item
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.phone_android_outlined),
                                SizedBox(width: 8),
                                _menuItem(title: 'About us'),
                              ],
                            ),
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'item2',
                          child: Container(
                            width: 200, // Width of the menu item
                            height: 45, // Height of the menu item
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.login_outlined),
                                SizedBox(width: 8),
                                _menuItem(title: 'Sign In', isActive: true),
                              ],
                            ),
                          ),
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _menuItem({String title = 'Title Menu', isActive = false}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
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
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color:
                    isActive ? Color.fromARGB(255, 66, 58, 183) : Colors.grey,
              ),
            ),
            SizedBox(height: 6),
            isActive
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
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
  return Hoverbutton(
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

class Hoverbutton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;

  Hoverbutton({required this.onTap, required this.text});

  @override
  _HoverbuttonState createState() => _HoverbuttonState();
}

class _HoverbuttonState extends State<Hoverbutton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          decoration: BoxDecoration(
            color: _isHovered ? Color.fromARGB(255, 66, 58, 183) : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 10,
                blurRadius: 12,
              ),
            ],
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: screenWidth * 0.01,
              fontWeight: FontWeight.bold,
              color: _isHovered ? Colors.white : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
