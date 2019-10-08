import 'package:flutter/material.dart';
import 'package:ecommerce/src/models/places.dart';

import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  
  List<Place> places=[
    Place(place: 'Austria', image: '1.jpg', days:7),
    Place(place: 'India', image: '2.jpg', days:12),
    Place(place: 'Bali', image: '3.jpg', days:2),
    Place(place: 'Austria', image: '1.jpg', days:21),
    Place(place: 'India', image: '2.jpg', days:4),
    Place(place: 'Bali', image: '3.jpg', days:10),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (_,index){
          return ImageCard(
            place: places[index],
            name: places[index].place,
            days: places[index].days,
            pictures: places[index].image,
          );
        },
      ),
    );
  }
}