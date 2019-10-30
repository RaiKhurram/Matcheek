import 'package:flutter/material.dart';

class NotLikedPage extends StatefulWidget {
  @override
  _NotLikedPageState createState() {
    return _NotLikedPageState();
  }
}

class _NotLikedPageState extends State<NotLikedPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {Navigator.pop(context);},
          ),

          title: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Text(
                'Liked By',
                style: TextStyle(fontSize: 22, color: Colors.black),
              )
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),

              Text("Not liked yet!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20,
              ),

              Text("Visit Matcheek.com to learn how you can\nincrease your chances of getting a like!",style: TextStyle(decoration: TextDecoration.underline,height: 1,fontSize: 16,color: Color.fromRGBO(254, 0, 18, 1)),textAlign: TextAlign.center,),


            ],
          ),
        ));
  }
}
