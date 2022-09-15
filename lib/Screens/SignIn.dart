import 'package:demo/Screens/RegistrationPage.dart';
import 'package:demo/Screens/Welcome.dart';
import 'package:demo/Shared/CT_TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Icon(
                  FontAwesomeIcons.solidCircleUser,
                  size: MediaQuery.of(context).size.height / 9,
                  color: buttonColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: buttonColor,
                    fontSize: MediaQuery.of(context).size.height / 30,
                  ),
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
                    labelText: "Email",
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
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  child: Center(
                    child: Text(
                      "Submit",
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
                            WelcomePage(),
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
                  color: Color(0xff4080c8),
                  height: MediaQuery.of(context).size.height / 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Forget password?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: MediaQuery.of(context).textScaleFactor * 12.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Material(
        elevation: 50,
        child: Container(
          padding: EdgeInsets.only(top: 30),
          color: Colors.white,
          height: MediaQuery.of(context).size.height / 5,
          child: Center(
            child: Column(
              children: [
                Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.indigo),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60, left: 60),
                  child: MaterialButton(
                    child: Center(
                      child: Text(
                        "SignUp",
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
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
                      );
                    },
                    color: Color(0xff4080c8),
                    height: MediaQuery.of(context).size.height / 14,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
