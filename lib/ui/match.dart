import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MatchProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MatchProfileState();
  }
}

class MatchProfileState extends State<MatchProfile> {
  bool setChat = false,
      setMatch1 = false,
      setMatch2 = false,
      prefChat = false,
      prefMatch1 = false,
      prefMatch2 = false,
      settings = false,
      myPref = false,
      cancel = false,
      unlikePref = false,
      confirm = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            child: new Container(
              child: AppBar(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                elevation: 0,
                centerTitle: false,
                automaticallyImplyLeading: false,
                flexibleSpace: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding:
                                EdgeInsets.only(left: 30, right: 30, top: 30)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(onPressed: (){
//                  Navigator.pushNamed(context, "/inbox");
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
                                  "assets/people_pink.png",
                                  height: 42,
                                  fit: BoxFit.fitHeight,
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
                                    Navigator.pushNamed(
                                        context, '/notification');
                                  },
                                  child: Image.asset(
                                    "assets/notification.png",
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
                          width: MediaQuery.of(context).size.width * 1,
                        ),
                      ],
                    ),
                    //Divider()
                  ],
                ),
              ),
            ),
            preferredSize: new Size(
              MediaQuery.of(context).size.width,
              70,
            ),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
//                    SizedBox(
//                      height: 20,
//                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("My Match",
                              style: TextStyle(
                                  fontSize: 22.0, fontWeight: FontWeight.w900)),
                          IconButton(
                              icon: Image.asset('assets/settings.png',
                                  color: Color.fromRGBO(77, 71, 71, 1),
                                  height: 30),
                              onPressed: () {
                                setState(() {
                                  settings = !settings;
                                });
                              }),
                        ],
                      ),
                    ),

                    Divider(),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Bob 356",
                              style: TextStyle(fontWeight: FontWeight.w900)),
                          Text("May 10 at 09.40am",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: Colors.grey)),
                        ],
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .02)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Color.fromRGBO(168, 167, 167, 1),
                                child: Text(
                                  "TE",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.height *
                                          .001)),
                              Text(
                                "Thierry Excof",
                                style: new TextStyle(
                                    fontSize: 12.0,
                                    color: Color.fromRGBO(56, 56, 56, 1)),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * .02)),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                Color.fromRGBO(168, 167, 167, 1),
                                child: Text(
                                  "DC",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width *
                                          .001)),
                              Text("Dan Coghan",
                                  style: new TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * .02)),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                Color.fromRGBO(168, 167, 167, 1),
                                child: Text(
                                  "TS",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width *
                                          .001)),
                              Text("Tom SkiNau",
                                  style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromRGBO(56, 56, 56, 1))),
                            ],
                          ),
                          Flexible(child: Container()),
                          new Column(
                            children: <Widget>[
                              new Text("Match",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w300)),
                              new Text("1 out 3",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w300)),
                            ],
                          ),
                          IconButton(
                            icon: Image.asset(
                              "assets/right.png",
                              width: 15,
                            ),
                            onPressed: () {
                              setState(() {
                                myPref = !myPref;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("12h left",
                            style: new TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(30, 100, 35, 1))),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/timer.png', width: 50, height: 50),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Divider(),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25,
                            backgroundColor:  Color.fromRGBO(168, 167, 167, 1),
                            child: Text(
                              "CS",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * .02)),
                          new Column(
                            children: <Widget>[
                              new Text("Chris",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                              new Text("25",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * .03)),
                          cancel
                              ? Column(children: <Widget>[
                                  Text(
                                    "Are you sure you want to unlike?\nOnce unliked, you cannot like or\nmatch again a person for 3 months.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 20,
                                        width: 95,
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              cancel = !cancel;
                                            });
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          color: Color.fromRGBO(254, 0, 18, 1),
                                          child: Text(
                                            "Cancel",
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.all(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .01)),
                                      Container(
                                        width: 95,
                                        height: 20,
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              unlikePref = !unlikePref;
                                            });
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          color:
                                              Color.fromRGBO(47, 121, 141, 1),
                                          child: Text(
                                            "Unlike",
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ])
                              : Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.all(
                                            MediaQuery.of(context).size.height *
                                                .01)),
                                    new Text("Its a match!",
                                        style: TextStyle(fontSize: 18)),
                                    Container(
                                      width: 136,
                                      height: 23,
                                      child: ButtonTheme(
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "/uninstall");
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(150)),
                                          color:
                                              Color.fromRGBO(254, 0, 18, 1.0),
                                          child: Text(
                                            "Send a Message",
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          cancel
                              ? Container()
                              : Padding(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * .04)),
                          cancel
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      cancel = !cancel;
                                    });
                                  },
                                  icon: new Icon(
                                    Icons.cancel,
                                    color: Colors.grey,
                                    size: 30,
                                  )),
                          Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
                color: Colors.white,
              ),
              !confirm
                  ? Container()
                  : Positioned(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(56, 178, 64, 0.8),
                              border: Border.all(color: Colors.grey)),
                          child: Column(children: <Widget>[
                            Container(
                              width: 280,
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 5, left: 10, right: 30),
                              child: Text(
                                "Change your mind before your new match discover about it!",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(30, 100, 35, 1)),
                              ),
                            ),
                            Container(
                                width: 280,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      height: 27,
                                      child: RaisedButton(
                                        onPressed: () {
                                          setState(() {
                                            confirm = false;
                                          });
                                          //Navigator.of(context).pop();
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        color: Color.fromRGBO(167, 159, 159, 1),
                                        child: Text(
                                          "Cancel",
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 27,
                                      child: RaisedButton(
                                        onPressed: () {
                                          setState(() {
                                            confirm = false;
                                          });
                                          //Navigator.of(context).pop();
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        color: Color.fromRGBO(30, 100, 35, 1),
                                        child: Text(
                                          "Unlike",
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(height: 2,),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Are you sure you want to unlike? Once unliked, you\ncannot like ormatch again these people for 3 months.",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                          ])),
                      right: 0,
                      top: 60,
                    ),
              !unlikePref
                  ? Container()
                  : Positioned(
                      child: Container(

                        height: MediaQuery.of(context).size.height*.21,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Column(children: <Widget>[
                            Container(
                              width: 280,
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 5, left: 10, right: 30),
                              child: Text(
                                "My Preferences",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "Are you sure you want to unlike?\nOnce unliked, you cannot like or\nmatch again these people for 3 months.",
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                width: 280,

                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      height: 26,
                                      child: RaisedButton(
                                        onPressed: () {
                                          setState(() {
                                            cancel = false;
                                            unlikePref = false;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        color: Color.fromRGBO(254, 0, 18, 1),
                                        child: Text(
                                          "Cancel",
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 27,
                                      child: RaisedButton(
                                        onPressed: () {
                                          setState(() {
                                            cancel = false;
                                            unlikePref = false;
                                            confirm = true;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        color: Color.fromRGBO(47, 121, 141, 1),
                                        child: Text(
                                          "Unlike",
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                          ])),
                      right: 0,
                      top: 60,

                    ),
              !myPref
                  ? Container()
                  : Positioned(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Column(children: <Widget>[
                            Container(
                              width: 300,
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 5, left: 10, right: 30),
                              child: Text(
                                "My Preferences",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Transform.scale(
                                              scale: .6,
                                              child: CupertinoSwitch(
                                                  activeColor: Color.fromRGBO(
                                                      2, 180, 255, 1),
                                                  value: prefChat,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      prefChat = val;
                                                    });
                                                  })),
                                          Text("Anonymous chat")
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Transform.scale(
                                              scale: .6,
                                              child: CupertinoSwitch(
                                                  activeColor: Color.fromRGBO(
                                                      2, 180, 255, 1),
                                                  value: prefMatch1,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      prefMatch1 = val;
                                                    });
                                                  })),
                                          Text("Match 1 out 2")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        width: 250,
                                        child: Row(
                                          children: <Widget>[
                                            Transform.scale(
                                                scale: .6,
                                                child: CupertinoSwitch(
                                                    activeColor: Color.fromRGBO(
                                                        2, 180, 255, 1),
                                                    value: prefMatch2,
                                                    onChanged: (val) {
                                                      setState(() {
                                                        prefMatch2 = val;
                                                      });
                                                    })),
                                            Text("Match 1 out 1"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        )),
                                    Container(
                                      width: 250,
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/close.png",
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text("Unlike Everyone")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        myPref = !myPref;
                                      });
                                    },
                                    icon: new Image.asset("assets/left.png")),
                              ],
                            )
                          ])),
                      right: 0,
                      top: 60,
                    ),
              !settings
                  ? Container()
                  : Positioned(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 10, right: 30),
                                color: Color.fromRGBO(245, 244, 244, 1),
                                child: Text(
                                  "Default Preferences",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                width: 170,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Transform.scale(
                                        scale: .6,
                                        child: CupertinoSwitch(
                                            activeColor:
                                                Color.fromRGBO(2, 180, 255, 1),
                                            value: setChat,
                                            onChanged: (val) {
                                              setState(() {
                                                setChat = val;
                                              });
                                            })),
                                    Text("Anonymous chat")
                                  ],
                                ),
                              ),
                              Container(
                                width: 170,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Transform.scale(
                                        scale: .6,
                                        child: CupertinoSwitch(
                                            activeColor:
                                                Color.fromRGBO(2, 180, 255, 1),
                                            value: setMatch1,
                                            onChanged: (val) {
                                              setState(() {
                                                setMatch1 = val;
                                              });
                                            })),
                                    Text("Match 1 out 2")
                                  ],
                                ),
                              ),
                              Container(
                                width: 170,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Transform.scale(
                                        scale: .6,
                                        child: CupertinoSwitch(
                                            activeColor:
                                                Color.fromRGBO(2, 180, 255, 1),
                                            value: setMatch2,
                                            onChanged: (val) {
                                              setState(() {
                                                setMatch2 = val;
                                              });
                                            })),
                                    Text("Match 1 out 1")
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 20),
                                width: 170,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[Text("DONE")],
                                ),
                              ),
                            ],
                          )),
                      right: 0,
                      top: 60,
                    ),
            ],
          ),
        ));
  }
}
