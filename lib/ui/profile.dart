import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {


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
            child: ListView(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(onPressed: (){

                  },
                    child:Image.asset(
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
                        "assets/notification.png",
                        height: 42,
                        fit: BoxFit.fitHeight,
                      )),
                  FlatButton(onPressed: (){Navigator.pushNamed(context, "/profile");}, child:
                  Image.asset(
                    "assets/me_pink.png",
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
                padding: EdgeInsets.symmetric(horizontal: 10, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Profile viewed by others',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(77, 71, 71, 1)),
                    ),
                  IconButton(icon:   Image.asset(
                      "assets/settings.png",
                      height: 30,
                    ), onPressed: (){Navigator.pushNamed(context, "/profilesettings");})
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                Image.asset(
                "assets/me_pink.png",
                  height: 70,
                  fit: BoxFit.fitHeight,
                ),
                      Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * .005)),
                      Text("Chris",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ]),
                padding: EdgeInsets.symmetric(horizontal: 15),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Color.fromRGBO(245, 244, 244, 1.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Powers',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(77, 71, 71, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[

                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/powerofmatch");
                      },
                      child:Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*.08,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 78, 83, 0.2),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.only(top: 5,left: 10),
                      child: RichText(
                        text: TextSpan(

                            children: <TextSpan>[
                        TextSpan(
                        text: 'Power of Match\n',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "impact",
                              color: Color.fromRGBO(159, 53, 57, 1),
                            )),
                              TextSpan(
                                text:
                                'Convert into matchs people that liked you\n',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(56, 56, 56, 1)),
                              ),
                            ]),
                        textAlign: TextAlign.start,
                      ),
                    ),),

                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/poweroftimer");
                      },
                      child:Container(
                      width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*.09,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(67, 162, 86, 0.2),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.only(left: 10,top: 5),
                      child: RichText(
                        text: TextSpan(

                            children: <TextSpan>[ TextSpan(
                        text: 'Power of Time\n',
                            style: TextStyle(
                              fontFamily: "impact",
                              fontSize: 16,
                              color: Color.fromRGBO(30, 100, 35, 1),
                            )),
                              TextSpan(
                                text:
                                'Change your mind before your new match\ndiscover about it',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(56, 56, 56, 1)),
                              ),
                            ]),
                        textAlign: TextAlign.start,
                      ),
                    ),),

                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/powerofping");
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*.08,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(116, 40, 111, 0.2),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.only(top:5,left:10),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                              TextSpan(
                              text: 'Power of Ping\n',
                              style: TextStyle(
                                fontFamily: "impact",
                                fontSize: 16,
                                color: Color.fromRGBO(116, 40, 111, 1),
                              )),
                            TextSpan(
                                  text: 'Ping anonymously your likes with SMS\n',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(133, 126, 126, 1)),
                                ),
                          ]),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/powerOfGolden");

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*.08,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 207, 84, 0.2),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.only(left: 10,top: 5),
                        child: RichText(
                          text: TextSpan(

                              children: <TextSpan>[
                          TextSpan(
                          text: 'Golden Power\n',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "impact",
                                color: Color.fromRGBO(152, 124, 32, 1),
                              ),),
                                TextSpan(
                                  text: 'Combine the powers of Match and Time!\n',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(133, 126, 126, 1)),
                                ),
                              ]),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Color.fromRGBO(245, 244, 244, 1.0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(77, 71, 71, 1)),
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
                                "My Subscriptions",
                                style: TextStyle(fontSize: 16),
                              ),
                              Flexible(child: Container()),
                              IconButton(
                                  icon: Icon(Icons.chevron_right),
                                  onPressed: () {})
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Text(
                                "Help Center",
                                style: TextStyle(fontSize: 16),
                              ),
                              Flexible(child: Container()),
                              IconButton(
                                  icon: Icon(Icons.chevron_right),
                                  onPressed: () {})
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Text(
                                "Privacy Policy",
                                style: TextStyle(fontSize: 16),
                              ),
                              Flexible(child: Container()),
                              IconButton(
                                  icon: Icon(Icons.chevron_right),
                                  onPressed: () {})
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Text(
                                "Terms of Service",
                                style: TextStyle(fontSize: 16),
                              ),
                              Flexible(child: Container()),
                              IconButton(
                                  icon: Icon(Icons.chevron_right),
                                  onPressed: () {})
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Text(
                                "Contact Us",
                                style: TextStyle(fontSize: 16),
                              ),
                              Flexible(child: Container()),
                              IconButton(
                                  icon: Icon(Icons.chevron_right),
                                  onPressed: () {})
                            ],
                          ),
                          Divider(),
                          Row(
                            children: <Widget>[
                              Text(
                                "Safety & Moderation",
                                style: TextStyle(fontSize: 16),
                              ),
                              Flexible(child: Container()),
                              IconButton(
                                  icon: Icon(Icons.chevron_right),
                                  onPressed: () {})
                            ],
                          ),Divider(),
                          FlatButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "/tmp5");
                            },
                              child: Text(
                                "Delete account",
                                style: TextStyle(fontSize: 16),
                              ),

                          ),
                          Divider(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
