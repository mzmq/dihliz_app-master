import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inventory_model.dart';

class InventoryProvider with ChangeNotifier {
  final List<InventoryModel> _listItem = [];

  List<InventoryModel> get listItem {
    return [..._listItem];
  }



  void additem(InventoryModel newItem)
  {
    _listItem.add(newItem);
    notifyListeners();
  }
}
