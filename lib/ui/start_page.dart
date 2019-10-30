import 'package:flutter/material.dart';

class StartPage  extends StatefulWidget {
  @override
  _StartPageState createState() {
    return _StartPageState();
  }
}

class _StartPageState extends State<StartPage> {

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Padding(
                       padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.28),
                       child: Image.asset('assets/logo.png',
                          height: 59,
                          width: 59,
                        ),
                     ),

                    Padding(
                      padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*.28),
                      child: Image.asset('assets/logo_text.png',
                        color: Color.fromRGBO(254,0,18, 1),
                        height: 36,
                        width: 181,
                      ),
                    ),
//                Image.asset('assets/logo_text.png',height: 100,width: 180,)
                  ],),


            SizedBox(height: 30.8,),
            RichText(
              text: TextSpan(
                  text: 'By Tapping "Log In"  or "Connect with AlloFace"\nyou Agrre to our ',
                  style: TextStyle(fontSize: 12, color:  Color.fromRGBO(167,159,159, 1)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms and Privacy Policy',
                      style: TextStyle(
                          fontSize: 12,
                          color:  Color.fromRGBO(26,39,159, 1)
                      ),
                    ),
                  ]
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 11),
            Container(
              width: 109,
              height: 27,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/confirmPhone");
                },
                padding: EdgeInsets.symmetric(horizontal: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color.fromRGBO(254,0,18, 1),
                child: Text("Log In",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white,fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'We don’t reach out to your contacts', style: TextStyle( color:Color.fromRGBO(167,159,159, 1), fontSize: 12),
            ),

            SizedBox(height: 32,),
            Container(
              width: 203.07,
              height: 27.03,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/authWithOct");
                  //Navigator.of(context).pop();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color.fromRGBO(2,180 , 255, 1),
                child: Text("Connect with Alloface",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),
                ),
              ),
            ), SizedBox(height: 9,),
            RichText(
              text: TextSpan(
                  text: 'Get access to more contacts  by connecting\nwith our partner ',
                  style: TextStyle(fontSize: 12, color:  Color.fromRGBO(167,159,159, 1)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Alloface',

                      style: TextStyle(
                        fontSize: 12,
                        color:  Color.fromRGBO(26,39,159, 1),

                      ),
                    ),
                  ]
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 33,),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              child:    Text(
                'Visit Matcheek.com to learn more about the App feature',textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  color: Color.fromRGBO(254,0,18,1),
                ),
              ),)
          ],

        ),
      ),
    );
  }
}
