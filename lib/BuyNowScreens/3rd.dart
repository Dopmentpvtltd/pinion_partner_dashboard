import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '4th.dart';
import '2nd.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  double _sliderValue = 0.0;
  int _views = 60000;
  int _additionalCost = 0;
  TextEditingController _country = TextEditingController();
  final List<String> countries = [
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czech Republic',
    'Democratic Republic of the Congo',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'East Timor',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Ivory Coast',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Kosovo',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Korea',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Palestine',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Korea',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom',
    'United States',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Vatican City',
    'Venezuela',
    'Vietnam',
    'Yemen',
    'Zambia',
    'Zimbabwe'
  ];
  String selectedGender = '';
  double _age = 18.0;
  bool isChecked1 = true;
  bool isChecked2 = true;
  bool isChecked3 = true;
  bool isChecke4 = true;
  bool isChecke5 = true;
  bool isChecked6 = true;
  bool isChecked7 = true;
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
            SizedBox(height: -10),
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
                "Step 3",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 1, 4, 180),
                  ),
                ),
                child: Text(
                  "Order Customization",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            ///
            ///
            ///1st COntainer Conatin Views E.T.C
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10), // Push content down from the top
                        Text(
                          "Total Views",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                            height:
                                20), // Create space between the title and slider
                        Slider(
                          value: _sliderValue,
                          onChanged: (newValue) {
                            setState(() {
                              _sliderValue = newValue;
                              _views = 60000 + (_sliderValue * 198000).toInt();
                              _additionalCost = (_sliderValue * 2300).toInt();
                            });
                          },
                        ),
                        Row(
                          children: [
                            Text(
                              'Guaranteed Views: $_views',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text('Additional Cost: $_additionalCost\$'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ////
            ///Paid Media Websites for Targeting
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "Paid Media Websites for Targeting",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Text(
                "Select up to 10 Major Media Websites for your Ad campaign.",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Text(
                "*For the selection of more than 10 websites/sections, a surcharge of \$50 per additional item will be added to your invoice.",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///
            ///
            ///Container For Space
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Container(
                color: Color.fromARGB(255, 212, 212, 212),
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 212, 212, 212),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //
            //
            //Choose Website Page
            //
            //
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                width: double.infinity,
                height:
                    250, // Increased height to fit the larger slider and text beneath it
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
                    ///////ALL OF THE ELEMENT IN CONTAINER IN COLUMN
                    child: Column(
                      children: [
                        ///////BUTTONS AND TEXT IN ROW
                        Row(
                          children: [
                            Text(
                              "Choose Websites \nFor Targeting",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            /////US BUTTON
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 35,
                                  vertical: 20,
                                ),
                                backgroundColor: Colors.grey.shade400,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/US.png',
                                    height: 35,
                                    width: 35,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "US Sites",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            //////UK BUTTON
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 20,
                                ),
                                backgroundColor: Colors.grey.shade400,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/UK.png',
                                    width: 35,
                                    height: 35,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "UK Sites",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            /////Europe Button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                backgroundColor: Colors.grey.shade400,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/european.png',
                                    width: 35,
                                    height: 35,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Europe Sites",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            //////ASIA BUTTON
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                backgroundColor: Colors.grey.shade400,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/asia.png',
                                    width: 35,
                                    height: 35,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Asian Sites",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Selected Websites \n For Targeting*",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0)), // Add a border
                                  hintText: 'Enter Upto 25 Websites',
                                  contentPadding: EdgeInsets.all(4),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //
            //
            //
            //Paid Media Digital Advertising
            //
            //
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "Paid Media Digital Advertising",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            //
            //
            //......Content Inside
            //
            //
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                color: Colors.grey.shade200,
                width: double.infinity,
                height: 1200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  border: Border.all(
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Paid Media Geographic Targeting",
                          style: TextStyle(color: Colors.black, fontSize: 24.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Country",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 125,
                          ),
                          Container(
                            width: 500,
                            height: 30,
                            child: TypeAheadFormField<String>(
                              textFieldConfiguration: TextFieldConfiguration(
                                controller: _country,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3.0),
                                  ),
                                  hintText: 'Enter a Country',
                                  contentPadding: EdgeInsets.all(4),
                                  fillColor: Colors.grey.shade400,
                                ),
                              ),
                              suggestionsCallback: (pattern) async {
                                return countries
                                    .where((country) => country
                                        .toLowerCase()
                                        .contains(pattern.toLowerCase()))
                                    .toList();
                              },
                              itemBuilder: (context, suggestion) {
                                return ListTile(
                                  title: Text(suggestion),
                                );
                              },
                              onSuggestionSelected: (suggestion) {
                                _country.text = suggestion;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    //
                    //Second Text Field
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "State",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Container(
                            width: 500,
                            height: 30,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        3.0)), // Add a border
                                hintText: 'Enter The State',
                                contentPadding: EdgeInsets.all(4),
                                fillColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    //
                    //3rd Text Field For City
                    //
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "City",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                            width: 500,
                            height: 30,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        3.0)), // Add a border
                                hintText: 'Enter The City',
                                contentPadding: EdgeInsets.all(4),
                                fillColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //
                    //
                    //4th Text Field For Postal Code
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Postal Code",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Container(
                            width: 500,
                            height: 30,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        3.0)), // Add a border
                                hintText: 'Enter The Postal Code',
                                contentPadding: EdgeInsets.all(4),
                                fillColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    //
                    //
                    //5th Text Field For landing Page URL
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Landing Page\n URL",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Container(
                            width: 500,
                            height: 30,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        3.0)), // Add a border

                                contentPadding: EdgeInsets.all(4),
                                fillColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    ///
                    //////....
                    ///////....Demographic Targeting
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text(
                          "Paid Media Demographic Targeting",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //
                    //
                    //........Age Group Slider
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Age Group",
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 20,
                                    child: Slider(
                                      value: _age,
                                      min: 18,
                                      max: 45,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _age = newValue;
                                        });
                                      },
                                      activeColor: Colors
                                          .blue, // Customize the active color
                                      inactiveColor: Colors
                                          .grey, // Customize the inactive color
                                      thumbColor: Colors
                                          .blue, // Customize the thumb col
                                    ),
                                  ),
                                  SizedBox(width: 60),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "(Please use the slider to select the desired age group)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(_age.toInt().toString()),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          // Display the selected age value
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //
                    //..........GENDER IN DEMOGRAPHIC TARGETING
                    //
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text("Gender"),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Radio(
                          value: 'Male',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value.toString();
                            });
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Male'),
                        SizedBox(
                          width: 30,
                        ),
                        Radio(
                          value: 'Female',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(
                              () {
                                selectedGender = value.toString();
                              },
                            );
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Female'),
                      ],
                    ),
                    //
                    //.........Industry
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Industry",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Container(
                            width: 500,
                            height: 30,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    3.0,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(4),
                                fillColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    ////
                    //////
                    ///.............Interests
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            "Interests",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          Container(
                            width: 500,
                            height: 30,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    3.0,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(4),
                                fillColor: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //
                    //................Ad Creative
                    //
                    //
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text(
                          "Ad Creative",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //
                    //
                    //............Choose File Button
                    Padding(
                      padding: EdgeInsets.fromLTRB(180, 0, 800, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 25),
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
                    SizedBox(
                      height: 70,
                    ),
                    //
                    //
                    //
                    //............Order List Items Or Description
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                            child: Text(
                                "• You can also submit the source file of your Ad Creative",
                                style: TextStyle(fontSize: 16.0)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                            child: Text(
                                "• Compatible image size: (Width: 1080px, height: 1080px) or (Width: 1200px, height: 628px)",
                                style: TextStyle(fontSize: 16.0)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                            child: Text(
                                "• Image to text ratio must not be more than 20%",
                                style: TextStyle(fontSize: 16.0)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                            child: Text(
                              "• Font size should not exceed 22px",
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Review",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 24.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(100, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isChecked6,
                                          onChanged: (bool? value) {
                                            // Update the checked state when the checkbox is tapped
                                            if (value != null) {
                                              isChecked6 = value;
                                            }
                                          },
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'I want to review the Ad Creative before the launch of the campaign.',
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Note: We reserve the right to make changes to meet social media platform guidelines.',
                                        style: TextStyle(
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //
            //
            //..........Media Reach
            //
            //
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "Media Reach",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "AP News",
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "Reuters",
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "Dow Jones",
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "ESG Today",
                      ),
                      SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "LexisNexis",
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "Google Search",
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "Google News",
                      ),
                      SizedBox(
                        width: 160,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //
            //
            //.......ESG Platforms and Indices

            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "ESG Platforms and Indices",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "Sustainalytics",
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "MSCI ESG Scores",
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "CSRHUB ESG ratings",
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "NASDAQ OneReport",
                      ),
                      SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "S&P Global ESG Scores",
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "Dow Jones\n Sustainability Indices",
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "Moody’s ESG Solutions",
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(FontAwesomeIcons.check),
                      Text(
                        "FTSE Russell’s ESG \nRatings",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
            ),

            ///
            ///
            ///Space COnatainer
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
              child: Container(
                color: Color.fromARGB(255, 212, 212, 212),
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 212, 212, 212),
                  ),
                ),
              ),
            ),
            /////
            //////
            ///EMail Marketing
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "Email Marketing",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  children: [
                    //Element 1//
                    //
                    ///
                    ///
                    //
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upload Your Media List",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Note: Your media list must contain the\n following information:",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "1. Full Name",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "2. Email Address",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Compatible file formats (.docx, .pdf,\n .xlsx, .csv)",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Please note: email lists must not exceed \n500 contacts.",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///
                    ///
                    ///Button Elevate dto upload Files
                    ///
                    Padding(
                      padding: EdgeInsets.fromLTRB(100, 50, 0, 110),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 25),
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
                              'Choose File',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),

                    ///
                    ///
                    ///Vertical Line
                    ///
                    Container(
                      width: 1.0,
                      height: 230,
                      color: const Color.fromARGB(255, 121, 120, 120),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Journalist Email Outreach",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Select regions for your email media outreach.",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked1,
                                        onChanged: (bool? value) {
                                          // Handle the checkbox state change
                                          setState(() {
                                            isChecked1 = value ?? false;
                                          });
                                        },
                                      ),
                                      Text("United Stated"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '(View)',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: isChecked2,
                                            onChanged: (bool? value) {
                                              // Handle the checkbox state change
                                              setState(() {
                                                isChecked2 = value ?? false;
                                              });
                                            },
                                          ),
                                          Text("Europe Region"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "(View)",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked3,
                                        onChanged: (bool? value) {
                                          // Handle the checkbox state change
                                          setState(() {
                                            isChecked3 = value ?? false;
                                          });
                                        },
                                      ),
                                      Text("Europeans"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '(View)',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isChecke4,
                                        onChanged: (bool? value) {
                                          // Handle the checkbox state change
                                          setState(() {
                                            isChecke4 = value ?? false;
                                          });
                                        },
                                      ),
                                      Text("Asians"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '(View)',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            ///
            ///
            ///
            ///Internals Communication
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "Internal Communications",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  children: [
                    //Element 1//
                    //
                    ///
                    ///
                    //
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upload Your Internal List",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Note: You must follow the\n following instructions:",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "1. Full Name",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "2. Email Address",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Compatible file formats (.docx, .pdf,\n .xlsx, .csv)",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///
                    ///
                    ///Button Elevate dto upload Files
                    ///
                    Padding(
                      padding: EdgeInsets.fromLTRB(100, 50, 0, 110),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 25),
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
                              'Choose File',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),

                    ///
                    ///
                    ///Vertical Line
                    ///
                    Container(
                      width: 1.0,
                      height: 230,
                      color: const Color.fromARGB(255, 121, 120, 120),
                    ),

                    ///
                    ///
                    ///Secon One
                    ///
                    ///
                    ///
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Internal Cell Phone Lists For \nSMS Distribution",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Note: Your list must contain the\n following information:",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "1. Full Name",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "2. Email Address",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            "Compatible file formats (csv)",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ///
                    ///
                    ///Button Elevate dto upload Files
                    ///
                    Padding(
                      padding: EdgeInsets.fromLTRB(100, 50, 50, 110),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 25),
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
                              'Choose File',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ////
            ///
            ///Media Contact Information
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "Media Contact Information",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///
            ///
            ///Full Name
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Full Name*",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  Container(
                    width: 500,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(3.0)), // Add a border
                        hintText: 'Enter The Full Name',
                        contentPadding: EdgeInsets.all(4),
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///
            ///
            ///Email
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Email Address*",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    width: 500,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(3.0)), // Add a border
                        hintText: 'Enter The Email',
                        contentPadding: EdgeInsets.all(4),
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///
            ///
            ///Job Title
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Job Title*",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 124,
                  ),
                  Container(
                    width: 500,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(3.0)), // Add a border
                        hintText: 'Enter The Job Title',
                        contentPadding: EdgeInsets.all(4),
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///
            ///
            ///Website URL
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Website URL*",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 500,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(3.0)), // Add a border
                        hintText: 'URL',
                        contentPadding: EdgeInsets.all(4),
                        fillColor: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ///
            ///
            ///
            ///Translations & Virtual Assistants
            ///
            ///
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 1, 4, 180),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color.fromARGB(255, 1, 4, 180),
                    )),
                child: Text(
                  "Translations & Virtual Assistants",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //  Padding(
            //             padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //             child: Container(
            //               width: double.infinity,
            //               height: 250,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(6.0),
            //                 border: Border.all(
            //                   color: Colors.black,
            //                 ),
            //               ),

            //             ),
            //  ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VDAs (Virtual Assistants)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecke5,
                        onChanged: (bool? value) {
                          // Handle the checkbox state change
                          setState(() {
                            isChecke5 = value ?? false;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Amazon Alexa")
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
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
