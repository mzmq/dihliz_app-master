import 'package:flutter/cupertino.dart';

import '../model/stock_model.dart';



class stockProvider with ChangeNotifier {
  List<stockModel> _listStock = [
    stockModel(
        name: 'potato', id: '1', weight: '120 ton', imageUrl: 'image/pot.jpg'),
    stockModel(
        name: 'potato', id: '2', weight: '70 ton', imageUrl: 'image/pot.jpg'),
    stockModel(
        name: 'potato', id: '3', weight: '55 ton', imageUrl: 'image/pot.jpg'),
    stockModel(
        name: 'potato', id: '4', weight: '32 ton', imageUrl: 'image/pot.jpg'),
  ];

  List<stockModel> get listStock {
    return [..._listStock];
  }
}
