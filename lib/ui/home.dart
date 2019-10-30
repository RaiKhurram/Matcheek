import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage  extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/logo.png',height: 80,width: 50,),
              Image.asset('assets/logo_text.png',height: 100,width: 180,)
              ],),
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                ' ', style: TextStyle(color: Color.fromRGBO(167,159,159, 1), fontSize: 12),
              ),
            ),
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
            SizedBox(height: 15,),
            Container(
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
                  style: TextStyle(color: Colors.white,fontSize: 16.0),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'We don’t reach out to your contacts', style: TextStyle( color:Color.fromRGBO(167,159,159, 1), fontSize: 12),
            ),

            SizedBox(height: 25,),
            Container(height: 27,
              child: RaisedButton(
                onPressed: () {
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color.fromRGBO(21,123 , 226, 1),
                child: Text("Connect with AlloFace",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white,fontSize: 16.0),
                ),
              ),
            ),
            SizedBox(height: 5,),
            RichText(
              text: TextSpan(
                  text: 'Get access to more contacts  by connecting\nwith our partner ',
                  style: TextStyle(fontSize: 12, color:  Color.fromRGBO(167,159,159, 1)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'AlloFace',

                      style: TextStyle(
                        fontSize: 12,
                        color:  Color.fromRGBO(26,39,159, 1),

                      ),
                    ),
                  ]
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 25,),
            Container(
           width: MediaQuery.of(context).size.width*0.6,
           child:    Text(
              'Visit Mancheek.com to learn more about the App feature',
             textAlign: TextAlign.center,
             style: TextStyle(

                decoration: TextDecoration.underline,
                color: Color.fromRGBO(254,0,18,1),
              ),
            ),
         )
          ],

        ),
      ),
    );
  }
}
