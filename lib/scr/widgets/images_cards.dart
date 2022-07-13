import 'package:booking_app/scr/models/places.dart';
import 'package:flutter/material.dart';
import 'image_card.dart';

class ImageCards extends StatefulWidget {

  @override
  State<ImageCards> createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> places = [
    Place(place: "Austria", image: "mountain.jpg", days: 7),
    Place(place: "Iceland", image: "glacier.jpg", days: 12),
    Place(place: "Bali", image: "compass.jpg", days: 3),
    Place(place: "Austria", image: "mountain.jpg", days: 7),
    Place(place: "Iceland", image: "glacier.jpg", days: 12),
    Place(place: "Bali", image: "compass.jpg", days: 3),
    Place(place: "Austria", image: "mountain.jpg", days: 7),
    Place(place: "Iceland", image: "glacier.jpg", days: 12),
    Place(place: "Bali", image: "compass.jpg", days: 3)
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: places.length,
          itemBuilder: (_, index) {
            return ImageCard(
              place: places[index],
              name: places[index].place,
              days: places[index].days,
              picture: places[index].image,
            );
          }),
    );
  }
}
