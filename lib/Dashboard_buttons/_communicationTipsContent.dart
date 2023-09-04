import 'package:flutter/material.dart';

class communicationTipsContent extends StatelessWidget {
  const communicationTipsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Tips For Effective Communication',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                        // Your provided text here
                        "To help maximize the transmission of your press release and to captivate the interests of the audience, we have compiled an extensive list to not only improve your communication but to propel your message effectively.\n"
                        // ... and so on
                        ),
                    SizedBox(height: 5.0),
                    Text(
                      'Enhance your press release with multimedia:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //3
                    Text(
                        // Your provided text here
                        "Research proves press releases are more effective when they include photos/videos/infographics.\n"
                        // ... and so on
                        ),
                    //4
                    Text(
                      'Maximize your social audiences:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //5
                    Text(
                        // Your provided text here
                        "Share your press release on your social media channels. Press releases distributed through our social media channels can also be shared – use them and push your release out to your Twitter, Facebook, Pinterest, and LinkedIn followers.\n"
                        // ... and so on
                        ),
                    //5
                    Text(
                      'Utilize the reports provided by PinionNewswire:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //6
                    Text(
                      // Your provided text here
                      "Email the distribution reports to your mailing lists, media contacts, investors, shareholders, and stakeholders – show everyone you do business with that you are active and effectively communicating with the marketplace.\n",
                    ),
                    //7
                    Text(
                      'Engage your followers in your communication efforts:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //8
                    Text(
                      // Your provided text here
                      "When you send your iCrowdNewswire reports to your followers, politely ask them to forward it to their followers. The concept is simple: you send it to 25 followers; they each forward to 25 followers, and so on.\n",
                    ),
                    //9
                    Text(
                      'Value of your existing audience:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //10
                    Text(
                      "Nothing is more valuable than messaging your investors, followers, stakeholders, and friends. Think of including your staff – build enthusiasm and pride and recruit your teams to share your growth story. Frequent communication builds excitement and support.\n",
                    ),
                    //11
                    Text(
                      'Focus on Frequent communication:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //12
                    Text(
                      "Convey a message of success and growth, keeping in mind customers, investors, vendors, and staff. Think of your universe as 'ShareHolders' and frequent communication as your duty and obligation. Nothing exudes confidence and builds credibility like regular and consistent communication.\n",
                    ),
                    //13
                    Text(
                      'Never wait:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //14
                    Text(
                      "A communication strategy needs to be the first priority and not an afterthought. Start issuing your messages ahead of events, when the events launch, during the events, and after the events. Don't wait until the last minute to issue a release.\n",
                    ),
                    //15
                    Text(
                      'Contact Information:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //16
                    Text(
                      "Ensure the contact information belongs to the right person; the focal person should be an individual well-versed in public relations that can help external executives arrange business relations and obtain additional material or other information.\n",
                    ),
                    //17
                    Text(
                      'Build and use your company social media channels frequently and wisely:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    //17
                    Text(
                      'Youtube:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.red,
                      ),
                    ),
                    //18
                    Text(
                      "One-third of YouTube searches are news-related.\n",
                    ),
                    //19
                    Text(
                      'Pinterest:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 185, 15, 3),
                      ),
                    ),
                    //20
                    Text(
                      "Pin your news.\n",
                    ),
                    //21
                    Text(
                      'LinkedIn:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 34, 5, 167),
                      ),
                    ),
                    //20
                    Text(
                      "Use the LinkedIn long-form publishing service.\n",
                    ),
                    Text(
                      'Facebook:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 4, 70, 212),
                      ),
                    ),
                    //20
                    Text(
                      "Add to your creativity by attaching images and videos to your public posts.\n",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
