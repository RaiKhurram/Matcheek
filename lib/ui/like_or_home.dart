import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikeOrHomePage extends StatefulWidget {
  @override
  _LikeOrHomePageState createState() {
    return _LikeOrHomePageState();
  }
}

class _LikeOrHomePageState extends State<LikeOrHomePage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(onPressed: (){
//                  Navigator.pushNamed(context, "/inbox");
                 }, child:Image.asset(
                  "assets/logo.png",
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
                  "assets/me.png",
                  height: 42,
                  fit: BoxFit.fitHeight,
                )),
              ],
            ),
            SizedBox(
              height: 52,
            ),
            Container(
              color: Color.fromRGBO(242, 78, 83, 1),
              height: 2,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/likemycontacts");
                },
                child: Text(
                  "Like my contacts",
                  style: TextStyle(fontSize: 25,fontFamily: "impact"),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromRGBO(242, 78, 83, 1),
              height: 2,
              width: MediaQuery.of(context).size.width,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/mycontact");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset("assets/manage_contact.png",  height: 20,),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Manage contacts",
                      style: TextStyle(
                          color: Color.fromRGBO(21, 123, 226, 1), fontSize: 14),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color.fromRGBO(152, 124, 32, 1),
              height: 2,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/tempLiked");
                    },
                    child: Text(
                      "Liked By",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                Container(
                  height: 45,width: 1,color: Color.fromRGBO(152, 124, 32, 1),
                ),

                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/notLikes");
                    },
                    child: Text(
                      "My Likes",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromRGBO(152, 124, 32, 1),
              height: 2,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
