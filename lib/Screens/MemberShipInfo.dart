import 'package:demo/Shared/CT_TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MemberShipInfo extends StatelessWidget {
  const MemberShipInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor: Color(0xff495C83).withOpacity(0.2),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () => Navigator.pop(context)),
                ),
              ),
              Image.asset(
                'assets/BalsamLogoBlue.png',
                height: 63,
                width: 118,
              ),
              Expanded(
                child: Text(""),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                child: Image.asset(
                  'assets/3.png',
                ),
                tag: 'membershipinfo',
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 40, 15, 10),
                child: Text(
                  "Balsam\'s Membership",
                  style: TextStyle(
                      color: Color(0xff4080c8),
                      fontSize: MediaQuery.of(context).size.height / 35,
                      fontFamily: "GideonRoman-Regular",
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                thickness:
                    12.5, // empty space to the trailing edge of the divider.
                color: Color.fromARGB(150, 249, 242,
                    237), // The color to use when painting the line.
                height: 40, // The divider's height extent.
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Why Balsam Membership?",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 50,
                          color: Color(0xFFA2B5BB),
                          fontFamily: "Raleway-SemiBold",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Choosing a convenient package for you and your family,you will automatically get huge benefits that standard premiums do not cover like dentistry...",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 55,
                          color: Color(0xFFA2B5BB),
                          fontFamily: "Raleway-SemiBold",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 35),
                    MaterialButton(
                      child: Center(
                        child: Text(
                          "Learn More",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        _launchUrl(Uri.parse(
                            'https://mybalsam.com/why-balsam-membership/'));
                      },
                      color: Color(0xff4080c8),
                      height: MediaQuery.of(context).size.height / 14,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                endIndent: 60,
                indent: 60,
                thickness:
                    0.5, // empty space to the trailing edge of the divider.
                color: Colors.grey, // The color to use when painting the line.
                height: 10, // The divider's height extent.
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plans and Prices",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 50,
                          color: Color(0xFFA2B5BB),
                          fontFamily: "Raleway-SemiBold",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "3 different packages to suit all your need and budgets as an individual or family, Choose from...",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 55,
                          color: Color(0xFFA2B5BB),
                          fontFamily: "Raleway-SemiBold",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 35),
                    MaterialButton(
                      child: Center(
                        child: Text(
                          "Learn more",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        _launchUrl(Uri.parse(
                            'https://mybalsam.com/plans-and-prices/'));
                      },
                      color: Color(0xff4080c8),
                      height: MediaQuery.of(context).size.height / 14,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 15),
                    MaterialButton(
                      child: Center(
                        child: Text(
                          "Purchase Now",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {},
                      color: Colors.lightGreen[500],
                      height: MediaQuery.of(context).size.height / 14,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                endIndent: 60,
                indent: 60,
                thickness:
                    0.5, // empty space to the trailing edge of the divider.
                color: Colors.grey, // The color to use when painting the line.
                height: 50, // The divider's height extent.
              ),
            ],
          ),
        ));
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
