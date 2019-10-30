import 'package:flutter/material.dart';

class VerifyNumberNewPage extends StatefulWidget {
  bool next;
  VerifyNumberNewPage({this.next = false});

  @override
  _VerifyNumberNewPageState createState() {
    return _VerifyNumberNewPageState();
  }
}

class _VerifyNumberNewPageState extends State<VerifyNumberNewPage> {
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
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white, centerTitle: true,
        title:
            Image.asset("assets/logo_text.png",height: 44,),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 15,left: MediaQuery.of(context).size.width*.04,right:MediaQuery.of(context).size.width*.04 ),
        child: ListView(
          children: <Widget>[
            Text(
              "Verify your phone number",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: 'Your verification code was sent to  ',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(167, 159, 159, 1)),
                  children: <TextSpan>[
                    TextSpan(
                      text: '+33 6 95 58 53 65',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(21, 123, 226, 1),
                      ),
                    ),
                  ]),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.08,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,letterSpacing:2),

                    decoration: InputDecoration(

                      focusColor: Colors.blueAccent,
                      border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),

                          )),
                      hintText: "123456",
                      contentPadding: EdgeInsets.only(top: 10),

//                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Enter Verification Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            next == 0
                ? Text(
                    "Sometimes it may take a couple of minutes for the SMS to arrive. If you had to wait for longer than 5 minutes, please click Resend Code.",
                    textAlign: TextAlign.center,
                  )
                : RichText(
                    text: TextSpan(
                        text: 'Code not recognized!\n',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(159, 53, 57, 1)),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'Please, check again the code that you have received and enter it again. You can request another code if you click on Resend Code. Sometimes it may take a couple of minutes for the SMS to arrive.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(56, 56, 56, 1),
                            ),
                          ),
                        ]),
                    textAlign: TextAlign.start,
                  ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Resend Code",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      if (next == 0)
                        setState(() {
                          next = 1;
                        });
                      else {
                        if (widget.next)
                          Navigator.pushNamed(context, "/likeOrHome");
                        else
                          Navigator.pushNamed(context, "/tmp3");
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47, 121, 141, 1),
                    child: Text(
                      "Verify",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
