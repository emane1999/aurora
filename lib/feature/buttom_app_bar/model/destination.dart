import 'package:flutter/material.dart';

class Destination {
  const Destination({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

const destinations = [
  Destination(label: 'Home', icon: Icons.home),
  Destination(label: 'Attendance', icon: Icons.calculate_rounded),
  Destination(label: 'Requests', icon: Icons.receipt),
  Destination(label: 'Profile', icon: Icons.person_rounded),
];
