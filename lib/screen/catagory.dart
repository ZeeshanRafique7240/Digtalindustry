import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Vehicle {
  String name;
  IconData icon;

  Vehicle({required this.name, required this.icon});
}

List<Vehicle> vehicles = [
  Vehicle(name: "Mobiles", icon: FontAwesomeIcons.carAlt),
  Vehicle(name: "Acessories", icon: FontAwesomeIcons.car),
  Vehicle(name: "laptop", icon: FontAwesomeIcons.locationArrow),
];
