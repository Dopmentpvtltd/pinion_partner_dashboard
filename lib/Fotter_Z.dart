import 'package:flutter/material.dart';

class Fotter extends StatefulWidget {
  const Fotter({Key? key}) : super(key: key);

  @override
  State<Fotter> createState() => _FotterState();
}


class _FotterState extends State<Fotter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0.0),
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width / 8,
        MediaQuery.of(context).size.width / 15,
        MediaQuery.of(context).size.width / 8,
        0,
      ),
      color: const Color.fromARGB(255, 167, 188, 224),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    child: Image.asset(
                      'assets/images/Pinion-Partners-Logo.png',
                      width: 240,
                      height: 240,
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
                      Text("(349) 921 9388")
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
                      Text("(349) 921 9388")
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
                      Text("zaidahmad.it.cs@gmail.com")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text("link button iconcs here")],
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Actions",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
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
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Policies",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {}, child: Text("Terms of Service")),
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
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("© 2020 Pinion Partners. All Rights Reserved."),
        ],
      ),
    );
  }
}

