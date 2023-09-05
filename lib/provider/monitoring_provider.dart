import 'package:flutter/cupertino.dart';


class monitoringProvider with ChangeNotifier {
  Map<String, double> _ListMap = {
    'Mohamad': 10,
    'MOhammad': 20,
    'alqannas': 15,
    'ahmad': 23.5,
    'osama': 22,
  };

  Map<String, double> get ListMap {
    return {..._ListMap};
  }
}
