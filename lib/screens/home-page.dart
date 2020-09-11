import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/artback.jpg"), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(height: 70),
                  Text("JetArt", style: TextStyle(fontSize: 36, color: Colors.white)),
                  SizedBox(height: 20),
                  Text("An artist is not paid for his labor but for his Vision",
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                  SizedBox(height: 40),
                  Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      elevation: 7,
                      child: TextField(
                        onChanged: (text) {},
                        decoration: InputDecoration(
                          focusColor: Colors.transparent,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          fillColor: Colors.transparent,
                          filled: true,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * .8,
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(Icons.star,color: Colors.amberAccent,size: 30,),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular",style: TextStyle(color:Colors.white)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(Icons.star,color: Colors.amberAccent,size: 30,),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular",style: TextStyle(color:Colors.white)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(Icons.star,color: Colors.amberAccent,size: 30,),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular",style: TextStyle(color:Colors.white)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(Icons.star,color: Colors.amberAccent,size: 30,),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular",style: TextStyle(color:Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.85,
              builder: (BuildContext context, myscrollController) {
                return Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),

                  child: ListView(
                    controller: myscrollController,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,0,30,30),
                        child: Column(
                          children: <Widget>[
                            Container(height: 7,width: 50,decoration:BoxDecoration(color:Color(0xFF104845),borderRadius: BorderRadius.circular(10)) ,),

                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
