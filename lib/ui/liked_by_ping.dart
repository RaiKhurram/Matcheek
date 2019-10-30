import 'package:flutter/material.dart';

class LikedByPingPage extends StatefulWidget {
  @override
  _LikedByPingPageState createState() {
    return _LikedByPingPageState();
  }
}

class _LikedByPingPageState extends State<LikedByPingPage> {
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
          actions: <Widget>[FlatButton(onPressed: (){Navigator.pushNamed(context, "/activatepop");}, child:
            Image.asset("assets/ping.png",height: 36,))
          ],
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
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/activatepom");
                      },
                      child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "AH",
                              style: TextStyle(color: Colors.white),
                            ),
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
                          Image.asset(
                            "assets/Not_Like_Pink.png",
                            height: 35,
                          )
                        ],
                      ),
                    ),);
                  }),
              SizedBox(
                height: 10,
              ),

            ],
          ),
        ));
  }
}
