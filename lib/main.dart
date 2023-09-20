import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/MobileDisplay/loginPage/mobileManu.dart';
// import 'package:login/MobileDisplay/dashBoardPage/MobileDashboard.dart';
// import 'package:login/TeblatDisplay/dashBoardPage/TabDashboard.dart';
import 'package:login/TeblatDisplay/loginPage/teblatBody.dart';
import 'package:login/TeblatDisplay/loginPage/teblatManu.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'normalDisplay/DesktopMenu.dart';
import 'normalDisplay/DisktopBody.dart';
// import 'package:login/Dashboardpage.dart';
// import 'Registrationpage.dart';
import 'Fotters/Fotter_Z.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Fotters/MTFotter.dart';
import 'MobileDisplay/loginPage/mobileBody.dart';


import 'wideDisplay/WideBody.dart';
import 'wideDisplay/WideMenu.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'Dashboardpage.dart';
// import 'Dashboard_buttons/Used/HoverButton.dart';

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
        measurementId: "G-79KFV782W1"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Pinion Dashboard',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Choose layout based on screen width
    Widget content;
    if (screenWidth < 431) {
      // Mobile layout
      content = MobileLayout();
      // content = MobileDashboardPage();
    } else if (screenWidth < 1200) {
      // Tablet layout
      content = TabletLayout();
      // content = TabDashboardPage();
    } else if (screenWidth < 1500) {
      // Desktop layout
      content = Desktop();
      // content = DashboardPage();
    } else {
      //wide screen layout
      // content = TabletLayout();
      content = Widescreen();
      // content = DashboardPage();
    }

    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: content,
    );
  }
}

class TabletLayout extends StatelessWidget {
  TabletLayout({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(
                        screenWidth / 12,
                        0,
                        screenWidth / 12,
                        0,
                      ),
                      child: TeblatMenu()),
                  SizedBox(height: 20),
                  Container(
                      padding: EdgeInsets.fromLTRB(
                        screenWidth / 12,
                        0,
                        screenWidth / 12,
                        0,
                      ),
                      child: TeblatBody(_emailController, _passwordController)),
                  SizedBox(
                    height: 60,
                  ),
                  MTFotter(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  MobileLayout({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // Text(
                  //   "check Text",
                  //   style: TextStyle(
                  //     fontSize: 40,
                  //   ),
                  // ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth / 30,
                      0,
                      screenWidth / 30,
                      0,
                    ),
                    child: MobileMenu(),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth / 30,
                      0,
                      screenWidth / 30,
                      0,
                    ),
                    child: MobileBody(_emailController, _passwordController),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  MTFotter(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Widescreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 12,
                        0,
                        MediaQuery.of(context).size.width / 12,
                        0,
                      ),
                      child: WideMenu()),
                  SizedBox(height: 20),
                  Container(
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 12,
                        0,
                        MediaQuery.of(context).size.width / 12,
                        0,
                      ),
                      child: WideBody(_emailController, _passwordController)),
                  SizedBox(
                    height: 60,
                  ),
                  Fotter(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Desktop extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 8,
                        0,
                        MediaQuery.of(context).size.width / 8,
                        0,
                      ),
                      child: Menu()),
                  SizedBox(height: 20),
                  Container(
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width / 8,
                        0,
                        MediaQuery.of(context).size.width / 8,
                        0,
                      ),
                      child: Body(_emailController, _passwordController)),
                  SizedBox(
                    height: 60,
                  ),
                  Fotter(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
