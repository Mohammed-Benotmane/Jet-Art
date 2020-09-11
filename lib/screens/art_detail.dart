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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.art.imageUrl),fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.art.title,style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500)),
                  SizedBox(height: 20),
                  Text(widget.art.description,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
