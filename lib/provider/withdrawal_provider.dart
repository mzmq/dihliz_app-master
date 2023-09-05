import 'package:flutter/cupertino.dart';

import '../model/withdrawal_model.dart';

class WithdrawalProvider with ChangeNotifier {
  List<WithdrawalModel> _listitem2 = [
    WithdrawalModel(
        id: '1000',
        name: 'potato',
        weight: '20 ton',
        imagUrl: 'image/pot.jpg',
        deccirption:
            'Lorem lpsum is simply dummy \nprintind and typesetting ',
        Wh: '17 Ton',
        TotalQ: '150 Ton'),
    WithdrawalModel(
        id: '1001', name: 'potato', weight: '40 ton', imagUrl: 'image/pot.jpg',
        deccirption:
        'Lorem lpsum is simply dummy \nprintind and typesetting',
        Wh: '17 Ton',
        TotalQ: '150 Ton'),
    WithdrawalModel(
        id: '1002', name: 'potato', weight: '50 ton', imagUrl: 'image/pot.jpg',
        deccirption:
        'Lorem lpsum is simply dummy \nprintind and typesetting ',
        Wh: '17 Ton',
        TotalQ: '150 Ton'),
    WithdrawalModel(
        id: '1003', name: 'potato', weight: '75 ton', imagUrl: 'image/pot.jpg',
        deccirption:
        'Lorem lpsum is simply dummy \nprintind and typesetting industry.\nLorem lpsum has been the industrys',
        Wh: '17 Ton',
        TotalQ: '150 Ton'),
    WithdrawalModel(
        id: '1004', name: 'potato', weight: '32 ton', imagUrl: 'image/pot.jpg',
        deccirption:
        'Lorem lpsum is simply dummy \nprintind and typesetting ',
        Wh: '17 Ton',
        TotalQ: '150 Ton'),
  ];

  List<WithdrawalModel> get Listitem2 {
    return [..._listitem2];
  }
}
