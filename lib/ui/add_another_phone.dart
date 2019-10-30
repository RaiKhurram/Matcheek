import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAnotherNumPage extends StatefulWidget {
  @override
  _AddAnotherNumPageState createState() {
    return _AddAnotherNumPageState();
  }
}

class _AddAnotherNumPageState extends State<AddAnotherNumPage> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
         centerTitle: true,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo_text.png"
              ,height: 44,),
            ],
          )),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02,left: MediaQuery.of(context).size.width*.10,right: MediaQuery.of(context).size.width*.10),
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
              height: 30,
            ),
            Text(
              "Do you want to restore your account?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 107,
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, "/likeOrHome");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Restore",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                ),
                Container(
                  width: 107,
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/addNum");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47, 121, 141, 1),
                    child: Text(
                      "New Account",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
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
              "An account already exists with this number. If you do not wish to restore your account, we will reset the Like history and other information that have been provided for this account.",
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
