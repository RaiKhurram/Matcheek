import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './verification_code_new.dart';

class AddAnotherNumTwoPage extends StatefulWidget {
  @override
  _AddAnotherNumTwoPageState createState() {
    return _AddAnotherNumTwoPageState();
  }
}

class _AddAnotherNumTwoPageState extends State<AddAnotherNumTwoPage> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          title:
              Image.asset("assets/logo_text.png",height: 44,),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.10,right: MediaQuery.of(context).size.width*.10,top: MediaQuery.of(context).size.height*.02),
        child: ListView(
          children: <Widget>[
            Text(
              "Phone number validated!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "+41 78 75 758 52",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Verify another phone number:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("+41 78 75 758 53",
                  style: TextStyle(fontSize: 20),),
                Container(
                  width: 107,
                  height: 27,
                  child: RaisedButton(

                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new VerifyNumberNewPage(next: true,)));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Send Code",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 23,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("+41 78 75 758 53",
                  style: TextStyle(fontSize: 20),),
                Container(
                  width: 107,
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new VerifyNumberNewPage(next: true,)));
                      },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Send Code",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                "An account already exists with this number and is associated with another phone number. If you wish to restore your account you must verify another phone number."),
            SizedBox(
              height: 57,
            ),
           Text("I want to create a new account:",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  width: 107,
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/defineUsername");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47, 121, 141, 1),
                    child: Text(
                      "New Account",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "If you do not wish to restore your account, we will reset the Like history and other information that have been provided for this account.",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
