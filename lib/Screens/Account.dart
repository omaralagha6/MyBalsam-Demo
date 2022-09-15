import 'package:demo/Screens/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:demo/Shared/CT_TextStyle.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isActive = false;
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
        body: Container(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  child: Container(
                    padding: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 7,
                          blurRadius: 15,
                          offset: Offset(0, 7), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/ThomasWayne.png',
                    ),
                  ),
                  tag: 'Account',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Subscriptions",
                  style: TextStyle(
                      color: Color(0xff4080c8),
                      fontSize: MediaQuery.of(context).size.height / 35,
                      fontFamily: "GideonRoman-Regular",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Please provide a valid email to register",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                    title: Text(
                      "#18070",
                      style: TextStyle(
                          color: buttonColor, fontWeight: FontWeight.bold),
                    ),
                    subtitle: !isActive
                        ? Text(
                            "Next payement: 03/03/23",
                            style: TextStyle(color: Colors.grey),
                          )
                        : Text(''),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    tileColor: Colors.grey[200],
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalDivider(
                          thickness: 1,
                        ),
                        TextButton(
                          child: Text(
                            'Active',
                            style: TextStyle(color: Colors.lightGreen[800]),
                          ),
                          onPressed: () {
                            //print(isActive);
                            setState(() {
                              isActive = !isActive;
                            });
                            //print(isActive);
                          },
                        ),
                      ],
                    )),
                isActive
                    ? Container(
                        color: Colors.grey[200],
                        child: Column(
                          children: [
                            const Divider(
                              thickness:
                                  9, // empty space to the trailing edge of the divider.
                              color: Color(0xFFD4D4D4),
                              // The color to use when painting the line.
                              height: 40, // The divider's height extent.
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.grey[200],
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Next payement: 03/03/23",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Via Mastercard ending in 1998",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Total: 315 AED/Year",
                                    style: TextStyle(
                                        color: buttonColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  MaterialButton(
                                    child: Center(
                                      child: Text(
                                        "View",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                40,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isActive = !isActive;
                                      });
                                    },
                                    color: Colors.grey[300],
                                    height:
                                        MediaQuery.of(context).size.height / 14,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                    title: Text(
                      "#18070",
                      style: TextStyle(
                          color: buttonColor, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Next payement: 03/03/23",
                      style: TextStyle(color: Colors.grey),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    tileColor: Colors.grey[200],
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalDivider(
                          thickness: 1,
                        ),
                        TextButton(
                          child: Text(
                            'Active',
                            style: TextStyle(color: Colors.lightGreen[800]),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                    title: Text(
                      "#18070",
                      style: TextStyle(
                          color: buttonColor, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Next payement: 03/03/23",
                      style: TextStyle(color: Colors.grey),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    tileColor: Colors.grey[200],
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalDivider(
                          thickness: 1,
                        ),
                        TextButton(
                          child: Text(
                            'Active',
                            style: TextStyle(color: Colors.lightGreen[800]),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "My Profile",
                  style: TextStyle(
                      color: Color(0xff4080c8),
                      fontSize: MediaQuery.of(context).size.height / 35,
                      fontFamily: "GideonRoman-Regular",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Save changes after editing your profile info",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/userProfileLogo.png',
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "First Name",
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Last Name",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Mobile Number",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Gender",
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: buttonColor,
                      )),
                ),
                SizedBox(height: 15),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Email Address",
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Email Address",
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Select Country",
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: buttonColor,
                      )),
                ),
                SizedBox(height: 20),
                const Divider(
                    thickness:
                        12.5, // empty space to the trailing edge of the divider.
                    color: Color.fromARGB(150, 249, 242,
                        237), // The color to use when painting the line.
                    height: 40 // The divider's height extent.
                    ),
                MaterialButton(
                  child: Center(
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            SignIn(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                      (Route<dynamic> route) => false),
                  color: Colors.red[800],
                  height: MediaQuery.of(context).size.height / 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ));
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
