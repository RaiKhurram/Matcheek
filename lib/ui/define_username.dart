import 'package:flutter/material.dart';

class DefineUsernamePage extends StatefulWidget {
  @override
  _DefineUsernamePageState createState() {
    return _DefineUsernamePageState();
  }
}

class _DefineUsernamePageState extends State<DefineUsernamePage> {
  int next = 0;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0.5,
          leading: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
              onPressed: () {Navigator.pop(context);}),
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Image.asset("assets/logo_text.png",width: 221,height: 110,),
            ],

          ),
centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:6.5,left:MediaQuery.of(context).size.width*.10,right: MediaQuery.of(context).size.width*.10),
        child: ListView(
          children: <Widget>[
            Text(
              "Define a user name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(width: 107,
                  height: 26,
                  child: RaisedButton(
                    onPressed: () {
                      if (next == 0)
                        setState(() {
                          next = 1;
                        });
                      else {
                        Navigator.pushNamed(context, "/likeOrHome");
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47, 121, 141, 1),
                    child: Text(
                      "Continue",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 21,
            ),
            next == 1
                ? RichText(
                    text: TextSpan(
                        text: 'User name already existing!\n',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(159, 53, 57, 1)),
                        children: <TextSpan>[
                        TextSpan(
                          text:
                              'Please, try another user name. We need a user name for anonymous chat.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(56, 56, 56, 1),
                          ),
                        ),
                      ]))
                : Text(
                    "Chose a user name for anonymous chat",
                    textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
                  ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.04,
            ),


            Container(


              height: MediaQuery.of(context).size.height*.18,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/Name.png",
                    )
                  ]),

            ),
//            Stack(
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    CircleAvatar(
//                      backgroundImage: AssetImage("assets/woman.png"),
//                      radius: 50,
//                    ),
//                    SizedBox(
//                      width: 10,
//                    ),
//                    Container(
//                      width: 100,
//                      height: 100,
//                      decoration: BoxDecoration(
//                          gradient: LinearGradient(
//                              colors: [
//                                Color.fromRGBO(244, 207, 84, 1),
//                                Color.fromRGBO(243, 137, 83, 1),
//                                Color.fromRGBO(242, 78, 83, 1)
//                              ],
//                              begin: const FractionalOffset(0.0, 0.0),
//                              end: const FractionalOffset(0.5, 0.0),
//                              stops: [0.0, 0.4, 1.0],
//                              tileMode: TileMode.clamp),
//                          shape: BoxShape.circle),
//                      child: Icon(
//                        Icons.person,
//                        color: Colors.white,
//                        size: 80,
//                      ),
//                    )
//                  ],
//                ),
//                Container(
//                  padding: EdgeInsets.only(top: 30),
//                  child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        Image.asset(
//                          "assets/link.png",
//                        )
//                      ]),
//
//                ),
//              ],
//            ),

          ],
        ),
      ),
    );
  }
}
