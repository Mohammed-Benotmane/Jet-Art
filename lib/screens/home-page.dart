import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/artback.jpg"),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.filter_list,color: Colors.white,size: 30,)
                ],
              ),
              SizedBox(height: 50),
              Stack(children: <Widget>[
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("JetArt",style: TextStyle(fontSize: 36,color: Colors.white)),
                        SizedBox(height: 10),
                        Text("An artist is not paid for his labor but for his Vision",style: TextStyle(fontSize: 14,color: Colors.white)),
                        SizedBox(height: 10),
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
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              DraggableScrollableSheet(
                                  initialChildSize: 0.75,
                                  minChildSize: 0.75,
                                  maxChildSize: 1,
                                  builder: (context,scrollController){
                                    return SingleChildScrollView(
                                      controller: scrollController,
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Container(
                                            width: 100,
                                            height: 100,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
