import 'package:flutter/material.dart';

class MTFotter extends StatefulWidget {
  const MTFotter({Key? key}) : super(key: key);

  @override
  State<MTFotter> createState() => _MTFotterState();
}

class _MTFotterState extends State<MTFotter> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.all(0.0),
      padding: EdgeInsets.fromLTRB(
        screenWidth / 16,
        screenWidth / 15,
        screenWidth / 16,
        0,
      ),
      color: const Color.fromARGB(255, 167, 188, 224),
      child: Center(
        child: Container(
          width: screenWidth * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    child: Image.asset(
                      'assets/images/Pinion-Partners-Logo.png',
                      width: 250,
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.call_outlined,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(349) 921 9388",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.call_rounded,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(349) 921 9388",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.mail_outline,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "zaidahmad.it.cs@gmail.com",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "link button iconcs here",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Actions",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: () {}, child: Text("Order Now")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: () {}, child: Text("Pricing")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text("Editorial Guidelines")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: () {}, child: Text("Our Releases")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Submit Your Press Releases")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text("Request a free Demo")),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Policies",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: () {}, child: Text("Terms of Service")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: () {}, child: Text("Privacy Policy")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: () {}, child: Text("Refund Policy")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: () {}, child: Text("Cookie Policy")),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: () {}, child: Text("Disclaimer")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("© 2020 Pinion Partners. All Rights Reserved.")),
            ],
          ),
        ),
      ),
    );
  }
}
