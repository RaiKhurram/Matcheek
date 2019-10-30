import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationINEmailPage extends StatefulWidget {
  @override
  _NotificationINEmailPageState createState() {
    return _NotificationINEmailPageState();
  }
}

class _NotificationINEmailPageState extends State<NotificationINEmailPage> {
  bool news = false,
      likes = false,
      matches = false,
      message = false,
      pot = false,
      promo = false;

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){
//                Navigator.pushNamed(context, "/inbox");
                }, child:Image.asset(
                "assets/logo_grey.png",
                height: 42,
                fit: BoxFit.fitHeight,
              ),),
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/tmp4');
                  },
                  child: Image.asset(
                    "assets/people.png",
                    height: 42,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/inbox");
                },
                child: Image.asset(
                  "assets/msg.png",
                  height: 42,
                  fit: BoxFit.fitHeight,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/notification');
                  },
                  child: Image.asset(
                    "assets/notification_pink.png",
                    height: 42,
                    fit: BoxFit.fitHeight,
                  )),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/profile");
                  },
                  child: Image.asset(
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
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                  text: 'Notifications in ',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(77, 71, 71, 1)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Email',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(77, 71, 71, 1)),
                    ),
                  ]),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'FREQUENCY',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
                Divider(
                  height: 2,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
                Row(
                  children: <Widget>[
                    Radio(value: 1, groupValue: 1, onChanged: (val) {}),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Every notification',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(value: 2, groupValue: 1, onChanged: (val) {

                    }),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Twice a day',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(value: 3, groupValue: 1, onChanged: (val) {}),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Once a day',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(value: 1, groupValue: 1, onChanged: (val) {}),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Once a week',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(
                        value: pot, groupValue: 1,
                        onChanged: (val) {
                      setState(() {
                      });
                    },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Once a month',
                      style: TextStyle(fontSize: 12),

                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'EVENTS',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  ],
                ),
                Divider(
                  height: 2,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/news.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Newsletters\n',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Get updated on platform and company',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(133, 126, 126, 1)),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(
                      value:  news,
                        onChanged: (val) {setState(() {
                          news=val;
                        });},
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    )
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/like_item.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Likes\n',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Get notified when you\'re liked by someone',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(133, 126, 126, 1)),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(
                      value:  likes,
                        onChanged: (val) {setState(() {
                          likes=val;
                        });},
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/match_item.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Matches\n',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Get notified when you have match update',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(133, 126, 126, 1)),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(
                      value:  matches,
                        onChanged: (val) {setState(() {
                          matches=val;
                        });},
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/message_item.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Message\n',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Get notified when you have a message',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(133, 126, 126, 1)),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(

                        value:  message,
                          onChanged: (val) {setState(() {
                            message=val;
                          });},
                        activeColor: Color.fromRGBO(2, 180, 255, 1),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/power_of_time.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Power of Time\n',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Get notified when your power is activated',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(133, 126, 126, 1)),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(
                      value:  pot,
                      onChanged: (val) {setState(() {
                        pot=val;
                      });},
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/promo_item.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Promotions\n',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Get notified for new promotions',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(133, 126, 126, 1)),
                            ),
                          ]),
                      textAlign: TextAlign.start,
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(
                      value: promo,
                      onChanged: (val) {setState(() {
                        promo=val;
                      });},
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "DONE",
                          style: TextStyle(fontSize: 16),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
