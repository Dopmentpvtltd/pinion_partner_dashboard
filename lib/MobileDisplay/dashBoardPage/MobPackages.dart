import 'package:flutter/material.dart';
import 'package:login/BuyNowScreens/1st.dart';

class MTPAckages extends StatefulWidget {
  const MTPAckages({
    Key? key,
  }) : super(key: key);

  @override
  State<MTPAckages> createState() => _MTPAckagesState();
}

class _MTPAckagesState extends State<MTPAckages> {
  String _hoveredUpdateInfoButton = '';
  bool isHovered = false;
  int basicPrice = 490;
  int enhancedPrice = 650;
  int PremiumPrice1 = 950;
  int StarterPrice = 130;
  int NitroPrice = 290;
  int FSPrice = 350;
  @override
  void initState() {
    super.initState();

    // Simulate loading and then show the button
    Future.delayed(
      Duration(seconds: 1),
      () {
        setState(
          () {},
        );
      },
    );
  }

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double FontSize = screenWidth * 0.03;
    double ButtonFontSize = screenWidth * 0.05;
    return Container(
      // margin: EdgeInsets.all(100.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          // Container(
          //   child: Align(
          //     child: Image.asset("images/most-popular.png"),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 625,
            width: screenWidth * 0.9,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "BASIC",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 34, 111, 211)),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                    ),
                    TweenAnimationBuilder<int>(
                      tween: IntTween(begin: 450, end: basicPrice),
                      duration: Duration(seconds: 2),
                      builder:
                          (BuildContext context, int value, Widget? child) {
                        return Text(
                          '\$$value',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    Text(
                      "PER PRESS RELESE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "250+ News publications Guaranteed",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Image.asset(
                    'images/Basic-plan.png',
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Same-day publication",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "No Limit for hyperlinks, media & images",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Extensive reports with live links",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "No Word limit",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "SEO Adjustment & Grammar check",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "24/7 Live Support",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _hoveredUpdateInfoButton = '1';
                    });
                  },
                  onExit: (_) {
                    setState(
                      () {
                        _hoveredUpdateInfoButton = '';
                      },
                    );
                  },
                  child: Container(
                    height: 100, // Adjust the height as needed
                    width: 400, // Adjust the width as needed
                    child: Align(
                      alignment:
                          Alignment.center, // Align the button to the center
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen1()));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 32.0,
                            horizontal: 92.0,
                          ), // Adjust padding for button size
                          primary: _hoveredUpdateInfoButton == '1'
                              ? Color(0xFF0D47A1)
                              : Colors
                                  .white, // Change background color on hover
                        ),
                        child: Text(
                          'Order Now',
                          style: TextStyle(
                            fontSize: ButtonFontSize, // Adjust font size if needed
                            fontWeight: FontWeight.bold,
                            color: _hoveredUpdateInfoButton == '1'
                                ? Colors.white
                                : Colors.black, // Change text color on hover
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          //basic plan container end
          SizedBox(
            height: 20,
          ),
          //enhanced plan container
          Container(
            height: 742.5,
            width: screenWidth * 0.9,
            padding: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 34, 111, 211), width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(
                      0, 0), // Adjust the value to move it slightly above
                  child: Container(
                    width: double.infinity,
                    height: 60, // Make the container full width
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 111, 211),
                      borderRadius: BorderRadius.circular(
                        7.5,
                      ), // Circular border radius
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "ENHANCED",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Set the text color to white
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                    ),
                    TweenAnimationBuilder<int>(
                      tween: IntTween(begin: 600, end: enhancedPrice),
                      duration: Duration(seconds: 2),
                      builder:
                          (BuildContext context, int value, Widget? child) {
                        return Text(
                          '\$$value',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    Text(
                      "PER PRESS RELESE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "Published on Main Domains",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Image.asset(
                            'images/Basic-plan.png',
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "Top slot Ads placement \n on 7 websites of your choice\nForbes, Entrepreneur, WSJ, NYT \n & USAToday, and additional sites",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "50,000+ Guaranteed Ads Impressions",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "500+ News publications Guaranteed",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "Same-day publication",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "No Limit for hyperlinks, media & images",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "Extensive reports with live links",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "No Word limit",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "SEO Adjustment & Grammar check",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "24/7 Live Support",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check,
                                color: Colors.green), // Always checked
                            Text(
                              "Outreach to targeted journalist",
                              style: TextStyle(
                                fontSize: FontSize,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              _hoveredUpdateInfoButton = '2';
                            });
                          },
                          onExit: (_) {
                            setState(
                              () {
                                _hoveredUpdateInfoButton = '';
                              },
                            );
                          },
                          child: Container(
                            height: 100, // Adjust the height as needed
                            width: 400, // Adjust the width as needed
                            child: Align(
                              alignment: Alignment
                                  .center, // Align the button to the center
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Screen1(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 32.0,
                                    horizontal: 92.0,
                                  ), // Adjust padding for button size
                                  primary: _hoveredUpdateInfoButton == '2'
                                      ? Color(0xFF0D47A1)
                                      : Colors
                                          .white, // Change background color on hover
                                ),
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(
                                    fontSize: ButtonFontSize, // Adjust font size if needed
                                    fontWeight: FontWeight.bold,
                                    color: _hoveredUpdateInfoButton == '2'
                                        ? Colors.white
                                        : Colors
                                            .black, // Change text color on hover
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 800,
            width: screenWidth * 0.9,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "PREMIUM",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 111, 211),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                    ),
                    TweenAnimationBuilder<int>(
                      tween: IntTween(begin: 900, end: PremiumPrice1),
                      duration: Duration(seconds: 2),
                      builder:
                          (BuildContext context, int value, Widget? child) {
                        return Text(
                          '\$$value',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    Text(
                      "PER PRESS RELESE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Published on Main Domains",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Image.asset(
                    'images/Premium-plan.png',
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Advertisements on 20 websites of your choice",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "80,000+ Guaranteed Ads Impressions",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "800+ News publications Guaranteed",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Same-day publication",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "No Limit for hyperlinks, media & images",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Extensive reports with live links",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Extensive reports with live links",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "No Word limit",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "SEO Adjustment & Grammar check",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "24/7 Live Support",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                      "Outreach to targeted journalist",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _hoveredUpdateInfoButton = '3';
                    });
                  },
                  onExit: (_) {
                    setState(
                      () {
                        _hoveredUpdateInfoButton = '';
                      },
                    );
                  },
                  child: Container(
                    height: 100, // Adjust the height as needed
                    width: 400, // Adjust the width as needed
                    child: Align(
                      alignment:
                          Alignment.center, // Align the button to the center
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Screen1())); // Button logic
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 32.0,
                            horizontal: 92.0,
                          ), // Adjust padding for button size
                          primary: _hoveredUpdateInfoButton == '3'
                              ? Color(0xFF0D47A1)
                              : Colors
                                  .white, // Change background color on hover
                        ),
                        child: Text(
                          'Order Now',
                          style: TextStyle(
                            fontSize: ButtonFontSize, // Adjust font size if needed
                            fontWeight: FontWeight.bold,
                            color: _hoveredUpdateInfoButton == '3'
                                ? Colors.white
                                : Colors.black, // Change text color on hover
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Center(
              child: Image.asset("images/Capture-1.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 554,
            width: screenWidth * 0.9,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Starter Plan",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 34, 111, 211),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                    ),
                    TweenAnimationBuilder<int>(
                      tween: IntTween(begin: 89, end: StarterPrice),
                      duration: Duration(seconds: 2),
                      builder:
                          (BuildContext context, int value, Widget? child) {
                        return Text(
                          '\$$value',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    Text(
                      "PER PRESS RELESE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("180+ News publications Guaranteed",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Container(
                  child: Image.asset(
                    'images/Starter-Plan.png',
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("Three-days Turnover",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("No Limit for hyperlinks, media & images",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("Reports with live links",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("SEO Adjustment & Grammar check",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("24/7 Live Support",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                SizedBox(height: 60),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _hoveredUpdateInfoButton = '4';
                    });
                  },
                  onExit: (_) {
                    setState(
                      () {
                        _hoveredUpdateInfoButton = '';
                      },
                    );
                  },
                  child: Container(
                    height: 100, // Adjust the height as needed
                    width: 400, // Adjust the width as needed
                    child: Align(
                      alignment:
                          Alignment.center, // Align the button to the center
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Screen1())); // Button logic
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 32.0,
                            horizontal: 92.0,
                          ), // Adjust padding for button size
                          primary: _hoveredUpdateInfoButton == '4'
                              ? Color(0xFF0D47A1)
                              : Colors
                                  .white, // Change background color on hover
                        ),
                        child: Text(
                          'Order Now',
                          style: TextStyle(
                            fontSize: ButtonFontSize, // Adjust font size if needed
                            fontWeight: FontWeight.bold,
                            color: _hoveredUpdateInfoButton == '4'
                                ? Color.fromARGB(255, 246, 249, 253)
                                : const Color.fromARGB(
                                    255, 8, 8, 8), // Change text color on hover
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 610.5,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromARGB(255, 34, 111, 211), width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: Offset(
                      0, 0), // Adjust the value to move it slightly above
                  child: Container(
                    width: double.infinity,
                    height: 60, // Make the container full width
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 111, 211),
                      borderRadius: BorderRadius.circular(
                        7.5,
                      ), // Circular border radius
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nitro Plan",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Set the text color to white
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                    ),
                    TweenAnimationBuilder<int>(
                      tween: IntTween(begin: 240, end: NitroPrice),
                      duration: Duration(seconds: 2),
                      builder:
                          (BuildContext context, int value, Widget? child) {
                        return Text(
                          '\$$value',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    Text(
                      "PER PRESS RELESE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green), // Always checked
                          Text("500+ US & Int. News publications\n Guaranteed",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                        ],
                      ),
                      Container(
                        child: Image.asset('images/Nitro-Plan.png'),
                      ),
                      Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green), // Always checked
                          Text("24 Hours Turnover",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green), // Always checked
                          Text("7 for do follow hyperlinks, one images",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green), // Always checked
                          Text(
                              "Report with live links and white label\n option available",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green), // Always checked
                          Text("1200 Words limit",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green), // Always checked
                          Text("SEO Adjustment & Grammar check",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green), // Always checked
                          Text("24/7 Live Support",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                        ],
                      ),
                      SizedBox(height: 60),
                      MouseRegion(
                        onEnter: (_) {
                          setState(
                            () {
                              _hoveredUpdateInfoButton = '5';
                            },
                          );
                        },
                        onExit: (_) {
                          setState(
                            () {
                              _hoveredUpdateInfoButton = '';
                            },
                          );
                        },
                        child: Container(
                          height: 100, // Adjust the height as needed
                          width: 400, // Adjust the width as needed
                          child: Align(
                            alignment: Alignment
                                .center, // Align the button to the center
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Screen1())); // Button logic
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 32.0,
                                  horizontal: 92.0,
                                ), // Adjust padding for button size
                                primary: _hoveredUpdateInfoButton == '5'
                                    ? Color(0xFF0D47A1)
                                    : Colors
                                        .white, // Change background color on hover
                              ),
                              child: Text(
                                'Order Now',
                                style: TextStyle(
                                  fontSize: ButtonFontSize, // Adjust font size if needed
                                  fontWeight: FontWeight.bold,
                                  color: _hoveredUpdateInfoButton == '5'
                                      ? Color.fromARGB(255, 250, 252, 255)
                                      : const Color.fromARGB(255, 0, 0,
                                          0), // Change text color on hover
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 787,
            width: screenWidth * 0.9,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "French or Spanish Plan",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 34, 111, 211)),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                    ),
                    TweenAnimationBuilder<int>(
                      tween: IntTween(begin: 300, end: FSPrice),
                      duration: Duration(seconds: 2),
                      builder:
                          (BuildContext context, int value, Widget? child) {
                        return Text(
                          '\$$value',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    Text(
                      "PER PRESS RELESE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text(
                        "Ad banner placements on 2 websites\n French or Spanish specific websites",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 400.0,
                  height: 100.0,
                  child: Image.asset(
                    'images/French-plan.png',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("15000+ Guaranteed Ads Impressions",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("400+ News publications Guaranteed",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("Same-day publication",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("No Limit for hyperlinks, media & images",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("Extensive reports with live links",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("No Word limit",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("SEO Adjustment & Grammar check",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("24/7 Live Support",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.green), // Always checked
                    Text("Outreach to targeted journalist",
                      style: TextStyle(
                        fontSize: FontSize,
                      ),),
                  ],
                ),
                SizedBox(height: 50),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _hoveredUpdateInfoButton = '6';
                    });
                  },
                  onExit: (_) {
                    setState(
                      () {
                        _hoveredUpdateInfoButton = '';
                      },
                    );
                  },
                  child: Container(
                    height: 100, // Adjust the height as needed
                    width: 400, // Adjust the width as needed
                    child: Align(
                      alignment:
                          Alignment.center, // Align the button to the center
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Screen1())); // Button logic
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 32.0,
                            horizontal: 92.0,
                          ), // Adjust padding for button size
                          primary: _hoveredUpdateInfoButton == '6'
                              ? Color(0xFF0D47A1)
                              : Colors
                                  .white, // Change background color on hover
                        ),
                        child: Text(
                          'Order Now',
                          style: TextStyle(
                            fontSize: ButtonFontSize, // Adjust font size if needed
                            fontWeight: FontWeight.bold,
                            color: _hoveredUpdateInfoButton == '6'
                                ? Color.fromARGB(255, 253, 254, 255)
                                : const Color.fromARGB(
                                    255, 0, 0, 0), // Change text color on hover
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
