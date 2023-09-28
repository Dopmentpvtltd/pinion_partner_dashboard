import 'package:flutter/material.dart';
import 'package:login/Buy%20Now/3rd.dart';
import 'package:table_calendar/table_calendar.dart';

class Fourth extends StatefulWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  TimeOfDay? selectedTime;
  bool isTimeSelected = false;

  void selectTime(TimeOfDay time) {
    setState(() {
      selectedTime = time;
      isTimeSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Image.asset(
                "images/Pinion-Partners-Logo.png",
                width: 300,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                "Press Release Submission System",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCircularIcon("images/document.png", "Title"),
                _buildDivider(),
                _buildCircularIcon("images/paper.png", "PR Content"),
                _buildDivider(),
                _buildCircularIcon("images/target.png", "Targeting"),
                _buildDivider(),
                _buildCircularIcon("images/calendar.png", "Schedule"),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Text(
                "Step 4",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Text(
                "Schedule Your Post",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(100, 40, 0, 0),
                  child: Container(
                    width: 500,
                    height: 450,
                    color: Color.fromARGB(255, 1, 4, 180),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors
                              .transparent, // Set a transparent shadow color
                          offset: Offset(0, 0),
                          spreadRadius:
                              -5, // Negative spread radius to make the border transparent
                          blurRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 40, 0, 0),
                          child: Text(
                            'Select Time',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ////
                        ///
                        ///Time Picker
                        ///
                        ///
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                          child: Column(
                            children: [
                              isTimeSelected
                                  ? Text(
                                      '${selectedTime!.hour}:${selectedTime!.minute}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60,
                                      ),
                                    )
                                  : TextButton(
                                      onPressed: () {
                                        // Show a time picker using the showTimePicker function
                                        showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        ).then((value) {
                                          if (value != null) {
                                            selectTime(value);
                                          }
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 1, 4, 180),
                                        shadowColor:
                                            Color.fromARGB(255, 1, 4, 180),
                                      ),
                                      child: Text(
                                        'Select Time',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                              if (isTimeSelected) // Add a button to allow resetting the selected time
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedTime = null;
                                      isTimeSelected = false;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 1, 4, 180),
                                    shadowColor: Color.fromARGB(255, 1, 4, 180),
                                  ),
                                  child: Text(
                                    'Reset Time',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Text(
                            'U.S. Eastern Time (ET) Zone',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                ///
                ///
                ///Select Date Container
                ///
                ///
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 50, 0),
                  child: Container(
                    width: 500,
                    height: 450,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.0),
                        bottomRight: Radius.circular(6.0),
                      ),
                      border: Border.all(
                        color: Color.fromARGB(255, 1, 4, 180),
                      ),
                    ),
                    child: Container(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: TableCalendar(
                            firstDay: DateTime.utc(2010, 10, 16),
                            lastDay: DateTime.utc(2030, 3, 14),
                            focusedDay: DateTime.now(),
                            onDaySelected: (selectedDay, focusedDay) {},
                          )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 50, 0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
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
                                builder: (context) => Fourth(),
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularIcon(String imagePath, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade500, width: 1.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              imagePath,
              height: 25,
              width: 25,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 152.0,
      height: 1.0,
      color: Colors.grey.shade500,
    );
  }
}
