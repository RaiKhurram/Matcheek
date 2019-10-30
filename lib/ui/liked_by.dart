import 'package:flutter/material.dart';

class LikedByPage extends StatefulWidget {
  @override
  _LikedByPageState createState() {
    return _LikedByPageState();
  }
}

class _LikedByPageState extends State<LikedByPage> {
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
              color: Colors.black,size: 40,
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          actions: <Widget>[
           FlatButton(child:  Image.asset("assets/match.png",height: 36,),onPressed: (){Navigator.pushNamed(context, "/activatepom");},)
          ],
          title:
              Text(
                'Liked By',
                style: TextStyle(fontSize: 22, color: Colors.black),
              )

        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/me_pink.png",
                            height: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Adam",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Flexible(child: Container()),
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "For each Match we need you to like at least 3 of your contacts. Make sure that you liked enough contacts! ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 27,
                child: RaisedButton(
                  onPressed: () {Navigator.pushNamed(context, "/likemycontacts");},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color.fromRGBO(47, 121, 141, 1),
                  child: Text(
                    "Like my contacts",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
