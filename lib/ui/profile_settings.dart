import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileSettingsPage extends StatefulWidget {
  @override
  _ProfileSettingsPageState createState() {
    return _ProfileSettingsPageState();
  }
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
          leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Profile Settings",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(

          color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(children: <Widget>[
              Container(
                color: Color.fromRGBO(245, 244, 244, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Edit profile',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(77, 71, 71, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromRGBO(245, 244, 244, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: 'Username ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: '(for anonymous chat)',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("Tom453"),
              ),
              Container(
                color: Color.fromRGBO(245, 244, 244, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: 'Email ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: '(for notifications)',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    GestureDetector(
                      child: Image.asset(
                        "assets/settings.png",
                        height: 30,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/NotificationINEmail");
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("tom.man@hotmail.com"),
              ),
              Container(
                color: Color.fromRGBO(245, 244, 244, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: 'Phone ID ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: '(to connect with your contacts)',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("+41 78 75 758 52"),
              ),
              Container(
                color: Color.fromRGBO(245, 244, 244, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: 'Phone ID ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: '(to connect with your contacts)',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("+41 78 75 758 52"),
              ),
              Container(
                color: Color.fromRGBO(245, 244, 244, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("assets/add.png",height: 30,),
                     SizedBox(width: 10,),
                     Text(
                           'Add Phone ID ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          ),

                  ],
                ),
              ),
            ])));
  }
}
