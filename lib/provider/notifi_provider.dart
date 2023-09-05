import 'package:flutter/cupertino.dart';

import '../model/notifi_model.dart';

class notifiProvider with ChangeNotifier {
  final List<notifiModel> _listNotifi = [
    notifiModel(
        description:
            'Admin We have approved the transfer of goods from Riyadh warehouse of Jeddah warehouse',
        imageUrl: 'image/admin.jpg'),
    notifiModel(
        description:
            'Warning We have approved the transfer of goods from Riyadh warehouse of Jeddah warehouse',
        imageUrl: 'image/warr.png')
  ];

  List<notifiModel> get listNotifi {
    return [..._listNotifi];
  }
}
