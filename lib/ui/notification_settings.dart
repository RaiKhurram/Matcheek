import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() {
    return _NotificationSettingsPageState();
  }
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body:Container(
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
//                    Navigator.pushNamed(context, "/inbox");
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
                padding: EdgeInsets.all(10),
                child:  Text(
                      'Notifications',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(77, 71, 71, 1)),

                  textAlign: TextAlign.start,
                ),
              ),

                Container(
                  margin: EdgeInsets.all(8),
                  child:Row(
                    children: <Widget>[
                      Image.asset('assets/menu_black_item.png',height: 40,width: 40, ),
                      Image.asset('assets/logo_text.png', width: 120,),
                      Flexible(child: Container()),
                      FlatButton(
                        child: Text(
                            'Edit',
                          style: TextStyle(color: Color.fromRGBO(133, 126, 126, 1)),
                        ),
                        
                        onPressed:(){
                          Navigator.pushNamed(context, "/notificationInApp");
                        },
                      )
                    ],
                  ),
                ),

                Divider(height: 1,color: Color.fromRGBO(234, 234, 234, 1.0),),

                Container(
                  margin: EdgeInsets.all(8),
                  child:Row(
                    children: <Widget>[
                      Image.asset('assets/Phone_notification.png',height: 40,width: 40, ),
                      SizedBox(width: 8,),
                      Text(
                        'Phone',
                      ),
                      Flexible(child: Container()),
                      FlatButton(
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Color.fromRGBO(133, 126, 126, 1)),
                        ),

                        onPressed:(){
                          Navigator.pushNamed(context, "/notificationInMobile");
                        },
                      )
                    ],
                  ),
                ),

                Divider(height: 1,color: Color.fromRGBO(234, 234, 234, 1.0),),

                Container(
                  margin: EdgeInsets.all(8),
                  child:Row(
                    children: <Widget>[
                      Image.asset('assets/email.png',height: 40,width: 40, ),
                      SizedBox(width: 8,),
                      Text(
                        'Email',
                      ),
                      Flexible(child: Container()),
                      FlatButton(
                        child: Text(
                          'Edit',
                          style: TextStyle(color: Color.fromRGBO(133, 126, 126, 1)),
                        ),
                        onPressed:(){
                          Navigator.pushNamed(context, "/NotificationINEmail");
                        },
                      )
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    FlatButton(
                      child: Text('Done',style: TextStyle(fontSize: 16,),),
                      onPressed: (){Navigator.pop(context);},
                    ),
                    SizedBox(width: 15,),
                  ],
                )

              ],
            )

        )
    );
  }
}