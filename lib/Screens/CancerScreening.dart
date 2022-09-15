import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:demo/Shared/CT_TextStyle.dart';

class CancerScreening extends StatelessWidget {
  const CancerScreening({Key? key}) : super(key: key);

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
                  'assets/2.png',
                ),
                tag: 'CancerScreening',
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 40, 15, 10),
                child: Text(
                  "hPG80 Early Detection of Cancer",
                  style: TextStyle(
                      color: Color(0xff4080c8),
                      fontSize: MediaQuery.of(context).size.height / 40,
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
                      "What is hPG80",
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
                      "Detecting cancer in its early stages of development allows for intervention under the best possible conditions. \nhPG80 has a very high sensitivity for detecting early stages of cancer.",
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
                            'https://mybalsam.com/cancer-screening/'));
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
                      "Book Appointment",
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
                      "Visit our partner clinic in UAE for blood puncture. find out your suitable location and time.",
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
                          "learn more",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        _launchUrl(Uri.parse(
                            'https://mybalsam.com/cancer-screening/'));
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
