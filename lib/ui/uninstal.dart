import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UninstallPage extends StatefulWidget {
  @override
  _UninstallPageState createState() {
    return _UninstallPageState();
  }
}

class _UninstallPageState extends State<UninstallPage> {
bool like=false,
match=false,
message=false;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
elevation: 0,
          backgroundColor: Color.fromRGBO(245, 244, 244, 1),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
            onPressed: (){

            },
          ),
          title: Row(children: <Widget>[
            SizedBox(width: MediaQuery.of(context).size.width*0.15,),
            Text('Delete Account',
              style: TextStyle(color: Colors.black),
          )],),
        ),

        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(

                margin: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Why not just uninstalling the App!',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'By keeping your account active with with us, we will be able to retrieve your Like history for the next time you join Matcheek and we will be able to keep you updated via email over the coming months if someone new liked you or if you got a new match.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'At anytime you can delete your account by reinstalling the App, verifying your phone again and accessing your Profile.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Please update your below email address and notifications, so we can reach out to you while the App is uninstalled from your phone.',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),

              Container(

                color: Color.fromRGBO(167, 159, 159, 0.5),

                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                ),
              ),

    Container(
          padding:  EdgeInsets.only(left: 10,top: 5,bottom: 5),
          child: Text(
                'MaliK@gmail.com', style: TextStyle(fontSize : 13 ),)),

              SizedBox(height: 5,),

              Container(
                //margin: EdgeInsets.all(18),
                color: Color.fromRGBO(167, 159, 159, 0.5),

                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                child: Text(
                  'Notification By Email',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                ),
              ),

              Container(

                margin: EdgeInsets.all(12),
                //color: Colors.black,
                child: Column(
                  children: <Widget>[
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
                              text: 'Like\n',
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
                            value: like,
                            onChanged: (val) {setState(() {
                              like=val;
                            });},
                            activeColor: Color.fromRGBO(2, 180, 255, 1),
                          ),
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
                              text: 'Match\n',
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
                          value: match,
                          onChanged: (val) {setState(() {
                            match=val;
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
                          value: message,
                          onChanged: (val) {setState(() {
                            message=val;
                          });},
                          activeColor: Color.fromRGBO(2, 180, 255, 1),
                        ))
                      ],
                    ),
                  ],
                ),
              ),

              RaisedButton(
                child: Text('Uninstall App',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                onPressed: (){},
                color: Color.fromRGBO(159, 53, 57, 0.50),
              ),



              RaisedButton(
                child: Text('Delete Account',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                onPressed: (){
                  Navigator.pushNamed(context, "/delete");
                },
                color: Color.fromRGBO(159, 53, 57, 0.50),
              ),

            ],
          ),
        )
    );
  }
}
