import 'package:flutter/material.dart';

class ConfirmPhoneNumPage2 extends StatefulWidget {
  @override
  _ConfirmPhoneNumPage2State createState() {
    return _ConfirmPhoneNumPage2State();
  }
}

class _ConfirmPhoneNumPage2State extends State<ConfirmPhoneNumPage2> {


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
          title:
              Image.asset("assets/logo_text.png",height: 44,),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 15,left: MediaQuery.of(context).size.width*.10,right:MediaQuery.of(context).size.width*.10 ),

        child: ListView(
          children: <Widget>[
            Text(
              "Confirm your phone number",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Country code",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "+",
                        hintStyle: TextStyle(fontSize: 25),
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child: TextField(

                    decoration: InputDecoration(
                        hintText: "78 75 758 52",
                        hintStyle: TextStyle(fontSize: 25),
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/verifyNewThree");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Send Code",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "We verify phone number authenticity to connect\nyou anonymously and safely with your contacts\nthat have shared with us your phone number.",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/woman.png"),
                      radius: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(244, 207, 84, 1),
                                Color.fromRGBO(243, 137, 83, 1),
                                Color.fromRGBO(242, 78, 83, 1)
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(0.5, 0.0),
                              stops: [0.0, 0.4, 1.0],
                              tileMode: TileMode.clamp),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 80,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/link.png",
                        )
                      ]),
                ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
