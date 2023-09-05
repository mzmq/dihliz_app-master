import 'package:flutter/cupertino.dart';

import '../model/transfer_model.dart';

class TransferProvider with ChangeNotifier {
  final List<TransferModel> _listTransfer = [
    TransferModel(
        name: 'potato',
        id: '1001',
        weight: '50 ton',
        imageUrl: 'image/pot.jpg',
        address: 'adress',
        WhName: '1',
        descirption:
            'Lorem lpsum is simply dummy text of the\nprintind and typesetting industry.\nLorem lpsum has been the industrys',TotalQ: '120 ton'),
    TransferModel(
        name: 'potato',
        id: '1002',
        weight: '150 ton',
        imageUrl: 'image/pot.jpg',
        address: 'adress',
        WhName: 'Name',
        descirption:
            'Lorem lpsum is simply dummy text of the\nprintind and typesetting industry.\nLorem lpsum has been the industrys',TotalQ: '90 ton'),
    TransferModel(
        name: 'potato',
        id: '1003',
        weight: '100 ton',
        imageUrl: 'image/pot.jpg',
        address: 'adress',
        WhName: 'Name',
        descirption:
            'Lorem lpsum is simply dummy text of the\nprintind and typesetting industry.\nLorem lpsum has been the industrys',TotalQ: '50 ton'),
    TransferModel(
        name: 'potato',
        id: '1004',
        weight: '100 ton',
        imageUrl: 'image/pot.jpg',
        address: 'adress',
        WhName: 'Name',
        descirption:
            'Lorem lpsum is simply dummy text of the\nprintind and typesetting industry.\nLorem lpsum has been the industrys',TotalQ: '123 ton'),
    TransferModel(
        name: 'potato',
        id: '1005',
        weight: '200 ton',
        imageUrl: 'image/pot.jpg',
        address: 'adress',
        WhName: 'Name',
        descirption:
            'Lorem lpsum is simply dummy text of the\nprintind and typesetting industry.\nLorem lpsum has been the industrys',TotalQ: '45 ton'),
    TransferModel(
        name: 'potato',
        id: '1006',
        weight: '70 ton',
        imageUrl: 'image/pot.jpg',
        address: 'adress',
        WhName: 'Name',
        descirption:
            'Lorem lpsum is simply dummy text of the\nprintind and typesetting industry.\nLorem lpsum has been the industrys',TotalQ: '75 ton'),
  ];

  List<TransferModel> get listTransfer {
    return [..._listTransfer];
  }
}
