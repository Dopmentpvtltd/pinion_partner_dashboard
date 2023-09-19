import 'dart:html';
import '3rd.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import '2nd.dart'; // Import the web-specific image_picker package

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final ImagePickerWeb _picker = ImagePickerWeb(); // Use ImagePickerWeb for web

  // Function to pick an image from the device
  Future<void> _pickImage() async {
    final FileUploadInputElement input = FileUploadInputElement();
    input.click();

    input.onChange.listen((e) {
      final files = input.files;
      if (files?.length == 1) {
        final file = files?[0];
        final reader = FileReader();

        reader.onLoadEnd.listen((e) {
          // Handle the selected image here
          print("Image selected: ${file?.name}");
        });

        reader.readAsDataUrl(file as Blob);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 10,
              child: Image.asset(
                "images/Pinion-Partners-Logo.png",
                width: 300,
                height: 80,
              ),
            ),
            Positioned(
              top: 90,
              left: 20,
              child: Text(
                "Press Release Submission System",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 150,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        _buildCircularIcon1(),
                        Text(
                          "Title",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    _buildDivider1(),
                    Column(
                      children: [
                        _buildCircularIcon2(),
                        Text(
                          "PR Content",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    _buildDivider2(),
                    Column(
                      children: [
                        _buildCircularIcon3(),
                        Text(
                          "Targeting",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    _buildDivider3(),
                    Column(
                      children: [
                        _buildCircularIcon4(),
                        Text(
                          "Schedule",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 40,
              child: Text(
                "Step 1",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 60,
              child: Row(
                children: [
                  Text(
                    "Press Release Title*",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 30,
                    width: 600.0, // Set your desired width here
                    child: TextField(
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                      cursorWidth: 2.0,
                      cursorHeight: 13.0,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(), // Add a border
                        hintText: 'Enter title of your press release',
                        contentPadding: EdgeInsets.all(4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 500, // Adjust the top position as needed
              left: 40,
              child: Text(
                "Logo", // Change the step number if necessary
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 500, // Adjust the top position as needed
              left: 180,
              child: ElevatedButton(
                onPressed: _pickImage,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                  backgroundColor: Colors.grey.shade600,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'images/upload.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '[ Choose File',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 600,
              right: 100,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BuyNow2(),
                        ),
                      );
                    },
                    child: Text(
                      "Previous",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 26.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Thirdpage(),
                        ),
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 253, 253),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 66, 58, 183),
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 26.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularIcon1() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade500, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "images/document.png",
          height: 25,
          width: 25,
        ),
      ),
    );
  }

  Widget _buildCircularIcon2() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade500, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "images/paper.png",
          height: 25,
          width: 25,
        ),
      ),
    );
  }

  Widget _buildCircularIcon3() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade500, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "images/target.png",
          height: 25,
          width: 25,
        ),
      ),
    );
  }

  Widget _buildCircularIcon4() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade500, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "images/calendar.png",
          height: 25,
          width: 25,
        ),
      ),
    );
  }

  Widget _buildDivider1() {
    return Container(
      width: 180.0,
      height: 2.0,
      color: Colors.grey.shade500,
    );
  }

  Widget _buildDivider2() {
    return Container(
      width: 180.0,
      height: 2.0,
      color: Colors.grey.shade500,
    );
  }

  Widget _buildDivider3() {
    return Container(
      width: 180.0,
      height: 2.0,
      color: Colors.grey.shade500,
    );
  }
}
