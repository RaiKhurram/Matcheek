import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoldenPowerPage extends StatefulWidget {
  @override
  _GoldenPowerPageState createState() {
    return _GoldenPowerPageState();
  }
}

class _GoldenPowerPageState extends State<GoldenPowerPage> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(children: <Widget>[
          Stack(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(244, 207, 84, 0.2),
              height: 350,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Golden Power",
                      style: TextStyle(
                          fontSize: 34,
                          color: Color.fromRGBO(152, 124, 32, 1),
                          fontFamily: "impact"),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child:Row(children: <Widget>[
                      Container(
                        height: 165,
                        width: 15,color: Color.fromRGBO(152, 124, 32, 1),),
                        Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.73,
                            padding: EdgeInsets.all(5),
                            color: Color.fromRGBO(212, 75, 80, 0.2),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Power of Match\n',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(159, 53, 57, 1)),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'Convert into Matchs 50 contacts that liked you',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(159, 53, 57, 1)),
                                    ),
                                  ]),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.73,
                            padding: EdgeInsets.all(5),
                            color: Color.fromRGBO(56, 178, 64, 0.2),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Power of Timer\n',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(30, 100, 35, 1)),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          '48h to change your mind on a new Match',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(30, 100, 35, 1)),
                                    ),
                                  ]),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.73,
                            padding: EdgeInsets.all(5),
                            color: Color.fromRGBO(116, 40, 111, 0.2),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Power of Ping\n',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(116, 40, 111, 1)),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Ping 20 likes',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(116, 40, 111, 1)),
                                    ),
                                  ]),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      )],),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                                text: '12\n',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'months\n',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '€4/mth',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ]),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 244, 244, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 92,
                          width: 89,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                                text: '6\n',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'months\n',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '€8/mth',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ]),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 244, 244, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 92,
                          width: 89,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                                text: '1\n',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'months\n',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '€13/mth',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ]),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 244, 244, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 92,
                          width: 89,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                InkWell(onTap:(){} ,child: Container(
                  height: 33,
                    padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(30) ,
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(244,207,84, 1), Color.fromRGBO(3,3,3,1)],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.0, 0.5),
                        stops: [0.0, 1.0],),
                    ),
                    child:Text(
                      "Continue",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    )), ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/profile");
                  },
                  child: Text(
                    "No Thanks",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  height: 5,
                  child: Container(),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Color.fromRGBO(77, 71, 71, 1),
                  height: 130,
                  child: RichText(
                    text: TextSpan(
                        text: 'Recurring billing. Cancel any time.',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '\nIf you choose to purchase a subscription, payment will be charged to your iTunes account, and your account will be charged with in 24 hours prior to the end of the current period. Auto-renewal may be tunrned off at any time by going to your',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ]),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ],
        )],),
      ),
    );
  }
}
