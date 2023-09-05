import 'package:flutter/cupertino.dart';

import '../model/warehouse_model.dart';


class warehouseProvider with ChangeNotifier {
  List<warehouseModel> _listWarehouse = [
    warehouseModel(
      WarehouseID: '1',
      WarehouseName: '1',
      Address1: 'Address1',
      WarehouseCapacityTons: '70 Ton',
    ),
    warehouseModel(
        WarehouseID: '2',
        WarehouseName: '2',
        Address1: 'Address1',
        WarehouseCapacityTons: '55 Ton'),
    warehouseModel(
        WarehouseID: '3',
        WarehouseName: '3',
        Address1: 'Address1',
        WarehouseCapacityTons: '120 Ton')
  ];

  List<warehouseModel> get listWarehouase {
    return [..._listWarehouse];
  }
}
