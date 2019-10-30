import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationINMatcheekPage extends StatefulWidget {
  @override
  _NotificationINMatcheekPageState createState() {
    return _NotificationINMatcheekPageState();
  }
}

class _NotificationINMatcheekPageState extends State<NotificationINMatcheekPage> {

  bool sound1 = false,
      sound2 = false,
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
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                  text: 'Notifications in ',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(77, 71, 71, 1)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Matcheek',
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
                      'SOUNDS',
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
                    Image.asset(
                      'assets/menu_black_item.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Play a sound for each notification received',
                      style: TextStyle(fontSize: 12),
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(
                      value: sound1,
                      onChanged: (val) {
                        setState(() {
                          sound1=val;
                        });
                      },
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/Conf_message_item.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Play a sound for each message received',
                      style: TextStyle(fontSize: 12),
                    ),
                    Flexible(child: Container()),
                    Transform.scale(
                      scale: .6,
                      child: CupertinoSwitch(
                      value: sound2,
                      onChanged: (val) {
                        setState(() {
                          sound2=val;
                        });
                      },
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
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
                      value: likes,
                      onChanged: (val) {
                        setState(() {
                          likes=val;
                        });
                      },
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    )
                    )
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
                      value: matches,
                      onChanged: (val) {
                        setState(() {
                          matches=val;
                        });
                      },
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
                      value: message,
                      onChanged: (val) {
                        setState(() {
                          message=val;
                        });
                      },
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/power_of_time.png',
                      height: 30,
                      width: 30,
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
                      value: pot,
                      onChanged: (val) {
                        setState(() {
                          pot=val;
                        });
                      },
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
                      value: true,
                      onChanged: (val) {},
                      activeColor: Color.fromRGBO(2, 180, 255, 1),
                    ))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  FlatButton(onPressed: (){Navigator.pop(context);}, child: Text("DONE",style: TextStyle(fontSize: 14),),
                    ),
                ],)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
