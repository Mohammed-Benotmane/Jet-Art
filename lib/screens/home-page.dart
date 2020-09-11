import 'package:flutter/material.dart';
import 'package:jetart/models/art.dart';
import 'package:jetart/models/artist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Artist> artists = [
    Artist(name: "Mohammed Benotmane",followers: 150,photoUrl: "https://avatars0.githubusercontent.com/u/39698080?s=460&u=2e2208341e7d95c6150ed53b901850c0182f23ce&v=4"),
    Artist(name: "Itachi Uchiha",followers: 100,photoUrl: "https://lh3.googleusercontent.com/proxy/4SjyJBR0xomMevGE6qNOPeZz89ElcAPcwCoTVHUOuk6FfNdCho8uhuP0_WnQrgxTu5rr8_jk48c0XTdnsZcoiN5HBnJRBAEN_XYkAzafQZykXNiizOA7Bu-Jd-HyudjtXvd6Nz7jkIjcwveh0S27suGSRyzYTVlE"),
    Artist(name: "Raymond Reddington",followers: 150,photoUrl: "https://image-uniservice.linternaute.com/image/450/2/1509256305/11449743.jpg"),
  ];

  List<Art> arts;

  @override
  void initState() {
    super.initState();
    arts = [
      Art(title: "Colour valley",description: "Art is an activity, the product of that activity or the idea that one has of it is deliberately directed to the senses",imageUrl: "https://www.gossip-room.fr/wp-content/uploads/2020/04/Starry_night.jpg",artist: artists[0]),
      Art(title: "Golden bust",description: "Art is an activity, the product of that activity or the idea that one has of it is deliberately directed to the senses",imageUrl: "https://upload.wikimedia.org/wikipedia/commons/3/38/Attributs_de_la_peinture%2C_de_la_sculpture_et_de_l%27architecture_-_Anne_Vallayer-Coster.jpg",artist: artists[0]),
      Art(title: "Fairytoons",description: "https://promptlings.files.wordpress.com/2016/12/636068866557187343-471764569_1wyvzik.jpg",artist: artists[0]),
    ];
  }
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
                            child: Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                              size: 30,
                            ),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                              size: 30,
                            ),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                              size: 30,
                            ),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                              size: 30,
                            ),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          SizedBox(height: 10),
                          Text("Popular", style: TextStyle(color: Colors.white)),
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
                  child: ListView(
                    controller: myscrollController,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 7,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFF104845), borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Handpicked",
                              style: TextStyle(fontSize: 24, letterSpacing: 1.5, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * .4,
                              child: ListView.builder(itemCount: arts.length,itemBuilder: (context,index){
                                return Card(

                                ) ;
                              },),
                            ),
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
