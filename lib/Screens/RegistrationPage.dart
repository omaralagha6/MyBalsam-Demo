import 'package:demo/Screens/EmailRegistration.dart';
import 'package:demo/Screens/SignIn.dart';
import 'package:demo/Screens/Welcome.dart';
import 'package:demo/Shared/CT_TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

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
        title: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Image.asset(
            'assets/BalsamLogoBlue.png',
            height: 63,
            width: 118,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.solidCircleUser,
              size: MediaQuery.of(context).size.height / 9,
              color: buttonColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Not Registered?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: buttonColor,
                fontSize: MediaQuery.of(context).size.height / 35,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Please choose your registration options, through your email or membership login",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Click to unlock BALSAM\'s Health Services",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).textScaleFactor * 12.5,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 14,
              padding: const EdgeInsets.only(left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          EmailRegistration(),
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
                  )
                },
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.height / 30,
                ),
                label: Text(
                  'Email Registration',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 40,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 14,
              padding: const EdgeInsets.only(left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: buttonColor)),
                ),
                onPressed: () => {
                  Navigator.pushReplacement(
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
                  )
                },
                icon: Icon(
                  Icons.lock,
                  color: buttonColor,
                  size: MediaQuery.of(context).size.height / 30,
                ),
                label: Text(
                  'Sign in',
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: MediaQuery.of(context).size.height / 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
