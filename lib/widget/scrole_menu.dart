import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items {
  final IconData icon;
  final String title;

  const Items({
    required this.icon,
    required this.title,
  });
}

List<Items> itemdetails = [
  Items(
    icon: Icons.train,
    title: "Feature",
  ),
  Items(
    icon: Icons.apartment,
    title: "Apertment",
  ),
  Items(
    icon: Icons.cabin,
    title: "Igloo",
  ),
  Items(
    icon: Icons.hotel,
    title: "Hotel",
  ),
  Items(
    icon: Icons.motorcycle,
    title: "Motel",
  ),
  Items(
    icon: Icons.card_travel,
    title: "Clubs",
  ),
];
