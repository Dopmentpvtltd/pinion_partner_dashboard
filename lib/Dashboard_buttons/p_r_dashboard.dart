import 'package:flutter/material.dart';

class PRDashboard extends StatefulWidget {
  @override
  _PRDashboardState createState() => _PRDashboardState();
}

class _PRDashboardState extends State<PRDashboard> {
  String searchKeyword = '';
  bool showSearchResults = false;
  int entriesPerPage = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 0.0,
            left: 10,
          ),
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Text(
            'Submit Your Press Release',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        //outer contaner of two
        Container(
          margin: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 220, 206, 206),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6.0),
                  bottomLeft: Radius.circular(6.0))),
          child: Column(children: [
            Container(
              //1st of two
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              margin: EdgeInsets.all(30.0),
              height: 110.0,
              width: double.infinity,
              // padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // title input
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 10,
                    ),
                    // height: 30,
                    width: MediaQuery.of(context).size.width * 0.28,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Press Release Title"),
                        SizedBox(height: 8.0),
                        Container(
                          //height control
                          height: 30.0,
                          child: TextField(
                            onChanged: (value) {
                              setState(
                                () {
                                  searchKeyword = value;
                                  showSearchResults = false;
                                },
                              );
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Press Release Title',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(
                                        255, 222, 222, 222)), // Border color
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(
                                  255, 255, 255, 255), // Background color
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //date input
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      left: 10,
                    ),
                    // height: 30,
                    width: MediaQuery.of(context).size.width * 0.28,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Date"),
                        SizedBox(height: 8.0),
                        Container(
                          //height control
                          height: 30.0,
                          child: TextField(
                            onChanged: (value) {
                              setState(
                                () {
                                  searchKeyword = value;
                                  showSearchResults = false;
                                },
                              );
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Date',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 125, 160, 189)), // Border color
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(
                                  255, 255, 255, 255), // Background color
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.only(
                      top: 18,
                    ),
                    height: 30.0,
                    width: MediaQuery.of(context).size.width * 0.08,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          showSearchResults = true;
                        });
                      },
                      child: Text(
                        'Search',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 185, 183, 183).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              margin: EdgeInsets.all(30.0),
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButton<int>(
                    value: entriesPerPage,
                    onChanged: (value) {
                      setState(() {
                        entriesPerPage = value!;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        value: 10,
                        child: Text('Show 10 entries'),
                      ),
                      DropdownMenuItem(
                        value: 25,
                        child: Text('Show 25 entries'),
                      ),
                      DropdownMenuItem(
                        value: 100,
                        child: Text('Show 100 entries'),
                      ),
                    ],
                  ),

                  Text(
                    'Search Results:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  // Display search results or default data
                  showSearchResults
                      ? Text('Display search results here')
                      : Text('Display any PR data here'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}
