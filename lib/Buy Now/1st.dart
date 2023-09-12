import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '2nd.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final ImagePicker _picker = ImagePicker();

  // Function to pick an image from the device
  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 300,
      maxWidth: 300,
    );
    if (pickedFile != null) {
      // Handle the selected image here
      print("Image selected: ${pickedFile.path}");
    }
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
                height: 200,
              ),
            ),
            Positioned(
              top: 160,
              left: 20,
              child: Text(
                "Press Release Submission System",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 150,
              child: Center(
                child: Row(
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
                    _buildDivider(),
                    Column(
                      children: [
                        _buildCircularIcon2(),
                        Text(
                          "PR Content",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    _buildDivider(),
                    Column(
                      children: [
                        _buildCircularIcon3(),
                        Text(
                          "Targeting",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    _buildDivider(),
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
              top: 380,
              left: 40,
              child: Text(
                "Step 1",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 410,
              left: 60,
              child: Row(
                children: [
                  Text(
                    "Press Release Title*",
                    style: TextStyle(
                      fontSize: 12.0,
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
              top: 460, // Adjust the top position as needed
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
              top: 460, // Adjust the top position as needed
              left: 180,
              child: ElevatedButton(
                onPressed: _pickImage,
                child: Text("Uplad Logo"),
              ),
            ),
            Positioned(
              top: 600,
              right: 100,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
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
                          builder: (context) => BuyNow2(),
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
                      backgroundColor: Colors.blue,
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
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  Widget _buildCircularIcon2() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade500, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "images/paper.png",
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  Widget _buildCircularIcon3() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade500, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "images/target.png",
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  Widget _buildCircularIcon4() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade500, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          "images/calendar.png",
          height: 30,
          width: 30,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 190.0,
      height: 2.0,
      color: Colors.grey.shade500,
    );
  }
}
