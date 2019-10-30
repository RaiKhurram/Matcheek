import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() {
    return _InboxPageState();
  }
}

class _InboxPageState extends State<InboxPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: AppBar(
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            elevation: 0,
            flexibleSpace: Row(
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
                    "assets/people.png",
                    height: 42,
                    fit: BoxFit.fitHeight,
                  ),
                ),

                FlatButton(onPressed: (){Navigator.pushNamed(context, "/inbox");}, child:Image.asset(
                  "assets/msg_pink.png",
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
                  "assets/me.png",
                  height: 42,
                  fit: BoxFit.fitHeight,
                )),
              ],
            ),
          ),
        ),
        preferredSize: new Size(80, 70),
      ),
      body: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              color: Color.fromRGBO(242, 242, 242, 1),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search messages',
                    hintStyle: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(56, 56, 56, 1)),
                    prefixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Search messages')
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    )),
              )),
          Flexible(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    if (index == 2) {
                      return Column(children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
//                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    backgroundColor: Colors.grey,
                                    radius: 26,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Benjamin',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '+1 52 52 56 53 56',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                          "Hey! how was the concert last night?? ")
                                    ],
                                  ),
                                  Flexible(child: Container()),
                                  Text(
                                    "09.40",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Color.fromRGBO(90, 90, 90, 1)
                                  .withOpacity(0.7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    onPressed: () {},
                                    color: Color.fromRGBO(161, 164, 253, 1),
                                    child: Text(
                                      "ARCHIVE",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    onPressed: () {},
                                    color: Color.fromRGBO(255, 92, 92, 1),
                                    child: Text(
                                      "BLOCK",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Divider()
                      ]);
                    }
                    else if(index==3)
                    {
                      return GestureDetector(
                        child: Column(children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                               Image.asset("assets/me_pink.png",height: 65,),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Benjamin',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '+1 52 52 56 53 56',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                        "Hey! how was the concert last night?? ")
                                  ],
                                ),
                                Flexible(child: Container()),
                                Text(
                                  "09.40",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ]),
                        onTap: () {
                          Navigator.pushNamed(context, "/chat");
                        },
                      );
                    }else {
                      return GestureDetector(
                        child: Column(children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            CircleAvatar(
                            child: Text("B",style: TextStyle(color: Colors.white,fontSize: 25),),
                        backgroundColor: Colors.grey,
                        radius: 26,
                      ),

                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Benjamin',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '+1 52 52 56 53 56',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                        "Hey! how was the concert last night?? ")
                                  ],
                                ),
                                Flexible(child: Container()),
                                Text(
                                  "09.40",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ]),
                        onTap: () {
                          Navigator.pushNamed(context, "/chat");
                        },
                      );
                    }
                  }))
        ],
      ),
    );
  }
}
