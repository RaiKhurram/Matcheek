import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NoMatchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoMatchPageState();
  }
}

class NoMatchPageState extends State<NoMatchPage> {
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
                          Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 30)),
                          Container(
                            child:       Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FlatButton(onPressed: (){
//                                  Navigator.pushNamed(context, "/inbox");
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
                                  ),
                                ),

                                FlatButton(onPressed: (){Navigator.pushNamed(context, "/inbox");}, child:Image.asset(
                                  "assets/msg.png",
                                  height: 42,
                                ),),

                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/notification');
                                    },
                                    child:Image.asset(
                                      "assets/notification.png",
                                      height: 42,
                                    )),
                                FlatButton(onPressed: (){Navigator.pushNamed(context, "/profile");}, child:
                                Image.asset(
                                  "assets/me.png",
                                  height: 42,
                                )),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width,
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
                90,
              ),
            ),
            body: Container(
              color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
//                  SizedBox(
//                    height: 20,
//                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("My Match",
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "No match available yet!",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Make sure that you like at least more than 3\nof your contacts, so we can trigger a Match\nfor you!",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 120,
                    height: 20,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Color.fromRGBO(47,121 , 141, 1),
                      child: Text("Like my contacts",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

SizedBox(height: 65,),
                      Text(
                        "Visit Matcheek.com to learn how you can\nincrease your chances of having a match!",
                        style: TextStyle(fontSize: 14,color: Colors.red,decoration:TextDecoration.underline),
                        textAlign: TextAlign.center,
                      ),

                ]
                ))));
  }
}
