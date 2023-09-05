import 'dart:typed_data';

import 'package:flutter/material.dart';

class InventoryModel {
  var id;
  var name;
  var weight;
  Icon icon;
  Text status;
  Uint8List imageUrl;

  InventoryModel(
      {required this.id,
      required this.name,
      required this.weight,
      required this.icon,
      required this.status,
      required this.imageUrl});
}
