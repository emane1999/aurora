import 'package:flutter/material.dart';

class Destination {
  const Destination({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

const destinations = [
  Destination(label: 'Home', icon: Icons.home),
  Destination(label: 'Attendance', icon: Icons.today),
  Destination(label: 'Requests', icon: Icons.inbox),
  Destination(label: 'Profile', icon: Icons.account_circle),
];
