import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jetart/models/art.dart';

class ArtDetail extends StatefulWidget {
  Art art;
  ArtDetail({this.art});

  @override
  _ArtDetailState createState() => _ArtDetailState();
}

class _ArtDetailState extends State<ArtDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(widget.art.imageUrl), fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.art.title, style: TextStyle(fontFamily: "Spartan",fontSize: 38, fontWeight: FontWeight.w500)),
                  SizedBox(height: 30),
                  Text(widget.art.description,
                      style: TextStyle(fontFamily: "Spartan",fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400)),
                  SizedBox(height: 60),
                  Container(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(widget.art.artist.photoUrl),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.art.artist.name,
                              style: TextStyle(fontFamily: "Spartan",fontSize: 16,fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${widget.art.artist.followers}k Followers",
                              style: TextStyle(fontFamily: "Spartan",fontWeight: FontWeight.w500,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amberAccent,
                                  size: 30,
                                ),
                                backgroundColor: Colors.white,
                                radius: 30,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Popular", style: TextStyle(fontFamily: "Spartan",color: Colors.grey.shade600)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amberAccent,
                                  size: 30,
                                ),
                                backgroundColor: Colors.white,
                                radius: 30,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Popular", style: TextStyle(fontFamily: "Spartan",color: Colors.grey.shade600)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amberAccent,
                                  size: 30,
                                ),
                                backgroundColor: Colors.white,
                                radius: 30,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Popular", style: TextStyle(fontFamily: "Spartan",color: Colors.grey.shade600)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
