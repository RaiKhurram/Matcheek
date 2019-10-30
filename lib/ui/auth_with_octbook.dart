import 'package:flutter/material.dart';
import '../colors.dart';

class AuthWithOctbookPage extends StatefulWidget {
  @override
  _AuthWithOctbookPageState createState() {
    return _AuthWithOctbookPageState();
  }
}

class _AuthWithOctbookPageState extends State<AuthWithOctbookPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
            onPressed: () {},
            child: Text(
              "Cancel",
              style: TextStyle(color: Color.fromRGBO(21, 123, 226, 1),fontSize: 7),
            )),
          backgroundColor: Colors.white,
          title:

              Text(
                "alloface.com",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
      centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              color: Color.fromRGBO(16, 77, 139, 1),
              child: Text(
                "To personalize content, and provide a safer experience, we use cookies. By tapping on the site, you are agree to our use of cookies on and off Octobook. Learn more, including about controls: Cookies Policy.",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: octbookBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "AlloFace",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Log into your Octobook account to\nconnect to Matcheek",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Log in with the AlloFace app",
                style: TextStyle(color: Colors.white),
              ),
              color: octbookBlue,
            ),
            SizedBox(
              height: 25,
            ),
            Row(children: <Widget>[
             SizedBox(width: 20,), Flexible(child:
              Container(color: Colors.grey,height: 0.5,    margin: EdgeInsets.only(right: 10)),
           ),
            Text("or",style: TextStyle(color: Colors.grey),),
              Flexible(child:
              Container(
                margin: EdgeInsets.only(left: 10),
                color: Colors.grey,height: 0.5,)),

             SizedBox(width: 20,),
            ],),SizedBox(
              height: 25,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text(
                "Log in with phone or email",
                style: TextStyle(color: Colors.white),
              ),
              color: octbookBlue,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Create New Account",style: TextStyle(color: octbookBlue),),
            SizedBox(
              height: 10,
            ),
            Text("Forgot Account?",style: TextStyle(color: Colors.grey),),

          ],
        ),
      ),
    );
  }
}
