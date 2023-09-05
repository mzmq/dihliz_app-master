import 'package:flutter/cupertino.dart';

import '../model/sheet_model.dart';

class sheetProvider with ChangeNotifier {
  List<sheetModel> _listsheet = [
    sheetModel(
        name: 'warehouse name 1',
        addres:
            'Al lmam saud ibn Abdul Aziz Branch Rd, Al Mughrizat,\nRiyadh 12484, Saudi Arabia',
        totalQ: '60 Ton'),
    sheetModel(
        name: 'warehouse name 2',
        addres:
            'Al lmam saud ibn Abdul Aziz Branch Rd, Al Mughrizat,\nRiyadh 12484, Saudi Arabia',
        totalQ: '50 Ton'),
    sheetModel(
        name: 'warehouse name 2',
        addres:
            'Al lmam saud ibn Abdul Aziz Branch Rd, Al Mughrizat,\nRiyadh 12484, Saudi Arabia',
        totalQ: '36 Ton')
  ];

  List<sheetModel> get listsheet {
    return [..._listsheet];
  }
}
