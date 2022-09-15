import 'package:demo/Screens/RegistrationPage.dart';
import 'package:demo/Screens/Welcome.dart';
import 'package:demo/Shared/CT_TextStyle.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 3;
  int _totalDots = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150,
        elevation: 0,
        shadowColor: Colors.grey.withOpacity(0.2),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text("")),
            Expanded(
              child: Image.asset(
                'assets/BalsamLogoBlue.png',
                height: 63,
                width: 118,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () => Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      RegistrationPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
                          ),
                      child: Row(
                        children: [
                          Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.withOpacity(0.7),
                            size: 15,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 70),
        child: PageView(
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/BalsamAppPhoto1.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Text(
                        "All your health and wellness needs in one plateform",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35,
                          fontFamily: 'Raleway-SemiBold',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        "Connect with a comprehensive network of medical and health institues, locally and internationally;ensuring precise diagnosis and cutting edge treatement.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/BalsamAppPhoto2.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Text(
                        "Accurate, reliable, effective, and affordable medical diagnosis is at your hands",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35,
                          fontFamily: 'Raleway-SemiBold',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        "We have brought to you a network of hospitals and internationally recognized medical centers to provide the second medical opinion consultation in line with international second opinion regulations and standards.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/BalsamAppPhoto3.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Text(
                        "hPG80 is the SOLE, most update test for EARLY cancer detection",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35,
                          fontFamily: 'Raleway-SemiBold',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        "Detecting cancer in its early stages of development allows for intervention under the best possible conditions. hPG80 has a very high sensitivity for detecting early stages of 18 types of cancer.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/BalsamAppPhoto5.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Text(
                        "Discover the great value of Balsam Membership that will diffidently change your health approach prospective.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 35,
                          fontFamily: 'Raleway-SemiBold',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        "As sson as you subscribe to become a BALSAM member, and by choosing a convenient package for you or the whole family, you will automatically get unparalleled benefits:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: _currentPage == 0
                ? Text("")
                : Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: FloatingActionButton(
                        heroTag: null,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.blueGrey,
                        ),
                        backgroundColor: Color(0xff495C83).withOpacity(0.2),
                        elevation: 0,
                        onPressed: () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }),
                  ),
          ),
          Expanded(
            child: Align(
                alignment: Alignment.center,
                child: DotsIndicator(
                  dotsCount: _totalDots,
                  position: _currentPage.toDouble(),
                  onTap: (double page) {
                    setState(() {
                      _pageController.animateToPage(page.toInt(),
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    });
                  },
                )),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: FloatingActionButton(
                  heroTag: null,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.blueGrey,
                  ),
                  backgroundColor: Color(0xff495C83).withOpacity(0.2),
                  elevation: 0,
                  onPressed: () {
                    if (_currentPage != 3) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
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
                    }
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
