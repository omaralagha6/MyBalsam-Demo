import 'package:demo/Screens/ContactUs.dart';
import 'package:demo/Shared/CT_TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Account.dart';
import 'CancerScreening.dart';
import 'MemberShipInfo.dart';
import 'NetworkPerCountry.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 3.6,
        shadowColor: Colors.grey.withOpacity(0.2),
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'assets/BalsamLogoBlue.png',
            height: 63,
            width: 118,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Text(
              "Welcome,John!",
              style: TextStyle(
                color: Color(0xff4080c8),
                fontSize: MediaQuery.of(context).size.height / 25,
                fontFamily: 'Raleway-SemiBold',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "This is your health app, take a look on our services",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Raleway-Thin",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MemberShipInfo(),
                        )),
                    child: Hero(
                      tag: 'membershipinfo',
                      child:
                          Item(image: 'assets/3.png', title: 'Membership Info'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CancerScreening())),
                      child: Hero(
                        tag: 'CancerScreening',
                        child: Item(
                            image: 'assets/2.png',
                            title: 'Cancer Screening (HGP80)'),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NetworkPerCountry())),
                      child: Hero(
                        tag: 'networkpercountry',
                        child: Item(
                            image: 'assets/1.png',
                            title: 'Network Per Country'),
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account())),
                      child: Hero(
                          tag: 'Account',
                          child: Item(
                              image: 'assets/Account.png', title: 'Account'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: const Divider(
                thickness:
                    0.5, // empty space to the trailing edge of the divider.
                color: Colors.grey, // The color to use when painting the line.
                height: 10, // The divider's height extent.
              ),
            ),
            Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 14,
                      width: MediaQuery.of(context).size.width,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.lightGreen[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () => {
                          showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Container(
                                    padding: EdgeInsets.all(20),
                                    color: Colors.lightGreen[800],
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Icon(
                                            FontAwesomeIcons.whatsapp,
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Start a Conversation",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            50,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        "Raleway-SemiBold",
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "Hi! Click one of our member below to chat on Whatsapp",
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            55,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        "Raleway-SemiBold",
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  titlePadding: const EdgeInsets.all(0),
                                  scrollable: true,
                                  backgroundColor: Colors.white,
                                  contentTextStyle: TextStyle(
                                    fontFamily: "Raleway-Regular",
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  content: Builder(
                                    builder: (context) {
                                      // Get available height and width of the build area of this widget. Make a choice depending on the size.
                                      var height =
                                          MediaQuery.of(context).size.height;
                                      var width =
                                          MediaQuery.of(context).size.width;

                                      return Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              "The team typically replies in a few minutes.",
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          55,
                                                  color: Colors.grey,
                                                  fontFamily:
                                                      "Raleway-SemiBold",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            ListTile(
                                              onTap: () => _launchWhatsapp(
                                                  Uri.parse(
                                                      "whatsapp://send?phone=971585153483")),
                                              title: Text(
                                                "الإمارات/UAE Support",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              subtitle: Text(
                                                "عربي & English",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              tileColor: Colors.lightGreen[800],
                                              leading: Icon(
                                                FontAwesomeIcons.whatsapp,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            ListTile(
                                              onTap: () => _launchWhatsapp(
                                                  Uri.parse(
                                                      "whatsapp://send?phone=201128995133")),
                                              title: Text(
                                                "مصر/Egypt Support",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              subtitle: Text(
                                                "عربي & English",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              tileColor: Colors.lightGreen[800],
                                              leading: Icon(
                                                FontAwesomeIcons.whatsapp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                );
                              })
                        },
                        icon: Icon(
                          Icons.whatsapp,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.height / 30,
                        ),
                        label: Text(
                          'WhatsApp',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 14,
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
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        ContactUs(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(0.0, 1.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  var tween = Tween(begin: begin, end: end)
                                      .chain(CurveTween(curve: curve));
                                  final offsetAnimation =
                                      animation.drive(tween);

                                  return SlideTransition(
                                    position: offsetAnimation,
                                    child: child,
                                  );
                                },
                              ))
                        },
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.height / 30,
                        ),
                        label: Text(
                          'Contact us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height / 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      )),
    );
  }

  Future<void> _launchWhatsapp(Uri url) async {
    await canLaunchUrl(url) ? launchUrl(url) : throw 'Could not launch $url';
  }

  Widget Item({required String image, required String title}) {
    return Container(
      //width: double.infinity,

      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            )),
      ),
      child: Center(
        child: Text(
          "$title",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 40,
            decoration: TextDecoration.none,
            fontFamily: 'Raleway-SemiBold',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
