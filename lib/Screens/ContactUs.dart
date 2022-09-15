import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
          padding: EdgeInsets.fromLTRB(15, 60, 15, 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We are happy to hear from you!",
                  style: TextStyle(
                      color: Color(0xff4080c8),
                      fontSize: MediaQuery.of(context).size.height / 35,
                      fontFamily: "GideonRoman-Regular",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Fill the form below and our team will contact you shortly",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 55,
                      color: Colors.grey,
                      fontFamily: "Raleway-SemiBold",
                      fontWeight: FontWeight.bold),
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
                    labelText: "Subject",
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.top,
                    expands: true,
                    maxLines: null,
                    minLines: null,
                    enabled: false,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Message",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                  onPressed: () {},
                  color: Color(0xff4080c8),
                  height: MediaQuery.of(context).size.height / 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
