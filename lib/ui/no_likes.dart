import 'package:flutter/material.dart';

class NoLikeSPage extends StatefulWidget {
  @override
  _NoLikeSPageState createState() {
    return _NoLikeSPageState();
  }
}

class _NoLikeSPageState extends State<NoLikeSPage> {
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
            onPressed: () {},
          ),

          title: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Text(
                'My Likes',
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
                height: 30,
              ),

              Text("No like available yet!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Text("Make sure that you liked at least more than 3 of \nyour contacts, so we can trigger a Match for you!",style: TextStyle(fontSize: 14,),textAlign: TextAlign.center,),

              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 120,
                height: 20,
                child: RaisedButton(
                  onPressed: () {Navigator.pushNamed(context, "/notification");},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color.fromRGBO(47, 121, 141, 1),
                  child: Text(
                    "Like my contacts",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
