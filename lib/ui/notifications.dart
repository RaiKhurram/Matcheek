import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() {
    return _NotificationsPageState();
  }
}

class _NotificationsPageState extends State<NotificationsPage> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
            padding: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[


                FlatButton(onPressed: (){

                  }, child:Image.asset(
                  "assets/logo_grey.png",
                  height: 42,
                  fit: BoxFit.fitHeight,
                ),),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/tmp4');
                  },
                  child: Image.asset(
                    "assets/people.png",
                    height: 42,
                    fit: BoxFit.fitHeight,
                  ),
                ),

                FlatButton(onPressed: (){Navigator.pushNamed(context, "/inbox");}, child:Image.asset(
                  "assets/msg.png",
                  height: 42,
                  fit: BoxFit.fitHeight,
                ),),

                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child:Image.asset(
                      "assets/notification_pink.png",
                      height: 42,
                      fit: BoxFit.fitHeight,
                    )),
                FlatButton(onPressed: (){Navigator.pushNamed(context, "/profile");}, child:
                Image.asset(
                  "assets/me.png",
                  height: 42,
                  fit: BoxFit.fitHeight,
                )),
              ],
            ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Color.fromRGBO(245, 244, 244, 1.0),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[Text(
                    'Notifications',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(77, 71, 71, 1)),
                    textAlign: TextAlign.start,
                  ),
                  IconButton(icon:
                  Image.asset("assets/settings.png",height: 30,), onPressed: (){
                    Navigator.pushNamed(context, "/notificationsettings");
                  })
                  ],),
                ),
                Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*.01),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/me_pink.png',
                        height: 50,
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child:  RichText(
                        text: TextSpan(
                            children: <TextSpan>[
                        TextSpan(
                        text: 'Bob38 ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: 'liked you. Look among your contacts.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                              TextSpan(
                                text: 'your ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: 'contacts.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                              TextSpan(
                                text: '\nMay 10 at 09.40am',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                            ]),
                        textAlign: TextAlign.start,
softWrap: true,
                      )),
                    ],
                  ),
                ),
                Divider(
                  height: 4,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),  Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*.01),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/me_pink.png',
                        height: 50,
                      ),
                      SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child:RichText(
                      text:  TextSpan(
                            children: <TextSpan>[TextSpan(
                    text: 'Congratulation, Chris ',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: 'using the username ',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                              TextSpan(
                                text: 'GeorgeClooney ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: 'is now a Match.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                              TextSpan(
                                text: '\nMay 10 at 09.40am',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                            ]),
                        textAlign: TextAlign.start,
                      )),
                    ],
                  ),
                ),
                Divider(
                  height: 4,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ), Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*.01),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/me_pink.png',
                        height: 50,
                      ),
                      SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                     child: RichText(
                        text: TextSpan(
                            text: 'There are ',
                            style: TextStyle(
                                fontSize: 14,
                              color: Color.fromRGBO(167, 159, 159, 1)

                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '13 people ',
                                style: TextStyle(
                                  color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    ),
                              ),
                              TextSpan(
                                text: 'that liked you but that are not yet in your ',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                              TextSpan(
                                text: 'contact list. Make sure that ',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),TextSpan(
                                text: 'your contact list',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),TextSpan(
                                text: ' is updated.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                              TextSpan(
                                text: '\nMay 10 at 09.40am',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(167, 159, 159, 1)),
                              ),
                            ]),
                        textAlign: TextAlign.start,
overflow: TextOverflow.clip,
                      )),
                    ],
                  ),
                ),
                Divider(
                  height: 4,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),

              ],
            )));
  }
}
