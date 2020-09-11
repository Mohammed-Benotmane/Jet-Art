import 'package:flutter/material.dart';
import 'package:jetart/models/art.dart';
import 'package:jetart/models/artist.dart';
import 'package:jetart/screens/art_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Artist> artists = [
    Artist(name: "Mohammed",followers: 150,photoUrl: "https://avatars0.githubusercontent.com/u/39698080?s=460&u=2e2208341e7d95c6150ed53b901850c0182f23ce&v=4"),
    Artist(name: "Itachi",followers: 100,photoUrl: "https://i.skyrock.net/4203/84954203/pics/3111345913_1_3_9mwxsEez.png"),
    Artist(name: "Reddington",followers: 150,photoUrl: "https://image-uniservice.linternaute.com/image/450/2/1509256305/11449743.jpg"),
  ];

  List<Art> arts;

  @override
  void initState() {
    super.initState();
    arts = [
      Art(title: "Colour valley",description: "Art is an activity, the product of that activity or the idea that one has of it is deliberately directed to the senses",imageUrl: "https://www.gossip-room.fr/wp-content/uploads/2020/04/Starry_night.jpg",artist: artists[0]),
      Art(title: "Golden bust",description: "Art is an activity, the product of that activity or the idea that one has of it is deliberately directed to the senses",imageUrl: "https://upload.wikimedia.org/wikipedia/commons/3/38/Attributs_de_la_peinture%2C_de_la_sculpture_et_de_l%27architecture_-_Anne_Vallayer-Coster.jpg",artist: artists[0]),
      Art(title: "Fairytoons",description: "Art is an activity, the product of that activity or the idea that one has of it is deliberately directed to the senses",imageUrl: "https://promptlings.files.wordpress.com/2016/12/636068866557187343-471764569_1wyvzik.jpg",artist: artists[0]),
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
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
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
                            SizedBox(height: 15),
                            Container(
                              height: 2,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent, borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: MediaQuery.of(context).size.height * .46,
                              child: ListView.builder(itemCount: arts.length,itemBuilder: (context,index){
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return ArtDetail();
                                    }));
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                    elevation: 2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 3,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(15),
                                              child: Image.network(
                                                arts[index].imageUrl,
                                                fit: BoxFit.fill,
                                                height: MediaQuery.of(context).size.height / 7,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    arts[index].title,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(height: 15),
                                                  Text(
                                                    arts[index].artist.name,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey.shade600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },),
                            ),
                            SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Top Artists",
                                  style: TextStyle(letterSpacing: 1,fontSize: 18, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: MediaQuery.of(context).size.height*.15,
                              child: ListView.separated(
                                separatorBuilder: (context,index){
                                  return SizedBox(width: 50);
                                },
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: artists.length,
                                itemBuilder: (context,index){
                                  return Column(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(artists[index].photoUrl),
                                        radius: 40,
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        artists[index].name,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
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
