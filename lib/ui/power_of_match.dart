import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PowerOfMatchPage extends StatefulWidget {
  @override
  _PowerOfMatchPageState createState() {
    return _PowerOfMatchPageState();
  }
}

class _PowerOfMatchPageState extends State<PowerOfMatchPage> {

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
        child: Stack(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(212, 75, 80, 0.2),
              height: MediaQuery.of(context).size.height*.4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height*.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Power of Match",
                      style: TextStyle(

                          fontSize: 34, color: Color.fromRGBO(159, 53, 57, 1),fontFamily: "impact"),
                    )
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height*.045,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Basic",
                      style: TextStyle(
                          fontSize: 25, color: Color.fromRGBO(159, 53, 57, 1)),
                    )
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height*.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Convert into Matchs 5 contacts that liked you!",
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(159, 53, 57, 1)),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            text: '12\n',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'months\n',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              TextSpan(
                                text: '€4/mth',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold),
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
                    ),Container(

                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            text: '6\n',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'months\n',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              TextSpan(
                                text: '€8/mth',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 244, 244, 1),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color:Color.fromRGBO(159,53,57,1) ,width: 2)
                      ),
                      height: 92,
                      width: 89,
                    ),Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            text: '1\n',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'months\n',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                              TextSpan(
                                text: '€13/mth',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold),
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
                  height: 33,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "/profile");
                  },
                  child: Container(
                  
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(30) ,
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(159,53,57, 1), Color.fromRGBO(80,27,29,1)],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.0, 0.5),
                      stops: [0.0, 1.0],),
                  ),
                  child:Text(
                  "Continue",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                )), ),

              SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/profile");
                  },
                  child: Text("NO THANKS",style: TextStyle(color: Colors.grey),),
                ),


                SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                color: Color.fromRGBO(77,71,71, 0.64),height: 180,child: RichText(
                text: TextSpan(
                    text: 'Recurring billing. Cancel any time.',
                    style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'If you choose to purchase a subscription, payment will be charged to your iTunes account, and your account will be charged with in 24 hours prior to the end of the current period. Auto-renewal may be tunrned off at any time by going to your',
                        style: TextStyle(
                            fontSize: 14, color: Colors.white),
                      ),
                    ]),
                textAlign: TextAlign.start,
              ) ,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
