import 'package:demo/Screens/EmailRegistration.dart';
import 'package:demo/Screens/RegistrationPage.dart';
import 'package:demo/Screens/SignIn.dart';
import 'package:demo/Shared/CT_TextStyle.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height / 11,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
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
                "Verify your email",
                style: TextStyle(
                    color: buttonColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height / 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Please verify your email by checking code received from Balsam Health Services.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                child: Center(
                  child: Text(
                    "Open Mail App",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {},
                color: buttonColor,
                height: MediaQuery.of(context).size.height / 14,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Wrong email?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey)),
                      TextSpan(
                          text: ' Edit now',
                          style: TextStyle(
                              color: buttonColor, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
