import 'package:flutter/material.dart';

class ItemFeature {
  String nameFeature;
  Icon? Iconsfeature;
  String? imagefeature;
  bool isCheckType;
  ItemFeature({
    required this.nameFeature,
    required this.isCheckType,
    this.Iconsfeature,
    this.imagefeature,
  });
}
