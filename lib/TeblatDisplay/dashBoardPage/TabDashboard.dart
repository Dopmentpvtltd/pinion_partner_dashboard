import 'package:flutter/material.dart';
// import 'package:login/Fotters/Fotter_Z.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:login/main.dart';

import 'TabPRDashBoard.dart';
import 'TabPackages.dart';
import 'TabTips.dart';

class TabDashboardPage extends StatefulWidget {
  @override
  _TabDashboardPageState createState() => _TabDashboardPageState();
}

class _TabDashboardPageState extends State<TabDashboardPage> {
  bool _isHovered = false;
  String _selectedButton = 'user_profile';
  String _hoveredButton = '';
  String _hoveredUpdateInfoButton = '';
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _showPassword = false;

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 82.0,
        backgroundColor: Color(0xFF0D47A1),
        actions: [
          Row(
            children: [
              MouseRegion(
                onEnter: (event) {
                  // Handle hover event, you can update state here
                  setState(() {
                    _isHovered = true;
                  });
                },
                onExit: (event) {
                  // Handle exit event, you can update state here
                  setState(() {
                    _isHovered = false;
                  });
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Desktop()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: _isHovered ? 28 : 24, // Increase size on hover
                        color: _isHovered
                            ? Colors.white
                            : Colors.white, // Change color on hover
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sign Out",
                        style: TextStyle(
                          fontSize: _isHovered
                              ? 16
                              : 14, // Increase font size on hover
                          color: _isHovered
                              ? Colors.white
                              : Colors.white, // Change color on hover
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 40),
        ],
      ),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Container(
                height: 800,
                width: 300,
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                      padding: EdgeInsets.all(25.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/images/Pinion-Partners-Logo.png',
                          //width: 900,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(child: _userProfileWidget()),
                    SizedBox(height: 30.0),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                    _dashboardButton(
                        'user_profile', 'User Profile', Icons.person),
                    SizedBox(height: 10.0),
                    _dashboardButton(
                        'pr_dashboard', 'Submit Your PR', Icons.dashboard),
                    SizedBox(height: 10.0),
                    _dashboardButton('communication_tips',
                        'Tips for Communication', Icons.lightbulb),
                    SizedBox(height: 10.0),
                    _dashboardButton(
                        'packages', 'Packages', Icons.shopping_bag),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(children: [_displayContent()]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _userProfileWidget() {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(
              'assets/images/download.jpg'), // Replace with your image path
        ),
        SizedBox(height: 10.0),
        Text(
          'Username',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _dashboardButton(
      String buttonId, String buttonText, IconData iconData) {
    final isActive = _selectedButton == buttonId || _hoveredButton == buttonId;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedButton = buttonId;
        });
      },
      onHover: (value) {
        setState(() {
          _hoveredButton = value ? buttonId : '';
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Color(0xFF0D47A1) : Colors.transparent,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: isActive ? Colors.blue : Colors.lightBlue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 12.0),
            Text(
              buttonText,
              style: TextStyle(
                color: isActive ? Colors.white : Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayContent() {
    switch (_selectedButton) {
      case 'user_profile':
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'User Information',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              _personalInfoForm(),
            ],
          ),
        );
      case 'pr_dashboard':
        return Center(
          child: TabPRDashboard(),
        );
      case 'communication_tips':
        return TabcommunicationTipsContent();
      case 'packages':
        return TabPAckages();
      default:
        return Container();
    }
  }

  Widget _personalInfoForm() {
    return Builder(
      builder: (context) {
        double screenWidth = MediaQuery.of(context).size.width;
        return Container(
          width: screenWidth*0.6,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.blue),
                        SizedBox(width: 10.0),
                        Text(
                          'Personal Information',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    _buildPersonalInfoFormField('Name'),
                    _buildPersonalInfoFormField('Full Name'),
                    _buildPersonalInfoFormField('Country'),
                    _buildPersonalInfoFormField('Phone Number'),
                    _buildPersonalInfoFormField('Address'),
                    _buildPersonalInfoFormField('City'),
                    SizedBox(height: 20.0),
                    Container(
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = 'update_info';
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = '';
                          });
                        },
                        child: ElevatedButton(
                          onPressed: () {
                            // Implement your update information logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hoveredUpdateInfoButton == 'update_info'
                                ? Color(0xFF0D47A1)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(
                              vertical: 26.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: Text(
                            'Update Information',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: _hoveredUpdateInfoButton == 'update_info'
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                height: 420,
                // width: 400,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock, color: Colors.blue),
                        SizedBox(width: 10.0),
                        Text(
                          'Update Password',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    _buildUpdatePasswordFormField('Old Password'),
                    _buildUpdatePasswordFormField('New Password',
                        controller: _newPasswordController),
                    _buildUpdatePasswordFormField('Confirm Password',
                        controller: _confirmPasswordController),
                    SizedBox(height: 20.0),
                    Container(
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = 'update_pass';
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = '';
                          });
                        },
                        child: ElevatedButton(
                          onPressed: () {
                            // Implement your update information logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hoveredUpdateInfoButton == 'update_pass'
                                ? Color(0xFF0D47A1)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(
                              vertical: 26.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: Text(
                            'Update Password',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: _hoveredUpdateInfoButton == 'update_pass'
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                height: 420,
                // width: 450,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.blue),
                        SizedBox(width: 10.0),
                        Text(
                          'Update Email',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    _buildEmailFormField('Current Email'),
                    _buildEmailFormField('Enter New Email'),
                    _buildUpdatePasswordFormField('Enter Password'),
                    SizedBox(height: 20.0),
                    Container(
                      child: MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = 'update_email';
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _hoveredUpdateInfoButton = '';
                          });
                        },
                        child: ElevatedButton(
                          onPressed: () {
                            // Implement your update information logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hoveredUpdateInfoButton == 'update_email'
                                ? Color(0xFF0D47A1)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(
                              vertical: 26.0,
                              horizontal: 49.0,
                            ),
                          ),
                          child: Text(
                            'Update Email',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: _hoveredUpdateInfoButton == 'update_email'
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  Widget _buildPersonalInfoFormField(String label, {bool dropdown = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 40.0,
            child: dropdown
                ? CountryListPick(
                    appBar: AppBar(
                      backgroundColor: Colors.blue,
                      title: Text('Pick your country'),
                    ),
                    theme: CountryTheme(
                      isShowFlag: true,
                      isShowTitle: true,
                      isShowCode: true,
                      isDownIcon: true,
                      showEnglishName: true,
                    ),
                    initialSelection: '+1',
                    onChanged: (CountryCode? code) {
                      // Handle the selected country
                    },
                  )
                : TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpdatePasswordFormField(
    String label, {
    TextEditingController? controller,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 40.0, // Adjust the height as needed
            child: TextFormField(
              controller: controller,
              obscureText: !_showPassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmailFormField(String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 40.0, // Adjust the height as needed
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
