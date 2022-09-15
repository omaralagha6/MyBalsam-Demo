import 'dart:ui';

import 'package:demo/Screens/RegistrationPage.dart';
import 'package:demo/Screens/VerifyEmail.dart';
import 'package:demo/Shared/CT_TextStyle.dart';
import 'package:flutter/material.dart';

class EmailRegistration extends StatelessWidget {
  const EmailRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton.small(
              elevation: 0,
              backgroundColor: Color(0xff495C83).withOpacity(0.2),
              child: Icon(
                Icons.arrow_back,
                color: Colors.blueGrey,
              ),
              onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        RegistrationPage(),
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
            ),
            TextButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          RegistrationPage(),
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
                child: Text(
                  "Go Back",
                  style: TextStyle(
                    color: buttonColor,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register by email",
                style: TextStyle(
                    color: buttonColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 30),
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
                height: 25,
              ),
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
              SizedBox(height: 15),
              TextFormField(
                enabled: false,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Full Name",
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
                  labelText: "Mobile Number",
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
                  labelText: "Password",
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
                  labelText: "Repeat Password",
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    color: Colors.lightGreen[800],
                    value: 0.6,
                    minHeight: 6,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  "Healthy Password!",
                  style: TextStyle(
                    color: Colors.lightGreen[800],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                  Expanded(
                    child: Text(
                        "Please click here to accept the terms on condition os using Balsam\'s Application.",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          VerifyEmail(),
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
                  );
                },
                color: buttonColor,
                height: MediaQuery.of(context).size.height / 14,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 25),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "Or register by membership",
                    style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 50),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
