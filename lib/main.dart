import 'package:dihliz_app/Auth_Screens/loginscreen.dart';
import 'package:dihliz_app/main/home_screen.dart';
import 'package:dihliz_app/provider/monitoring_provider.dart';
import 'package:dihliz_app/provider/notifi_provider.dart';
import 'package:dihliz_app/provider/sheet_provider.dart';
import 'package:dihliz_app/provider/stock_provider.dart';
import 'package:dihliz_app/provider/transfer_provider.dart';
import 'package:dihliz_app/provider/werahouse_provider.dart';
import 'package:dihliz_app/provider/withdrawal_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import 'Auth_Screens/splash_screen.dart';
import 'model/inventory/inventory_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => InventoryProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => notifiProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => WithdrawalProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => sheetProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => TransferProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => warehouseProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => stockProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => monitoringProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User? user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    print(user?.uid.toString());
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: user != null ? const HomeScreen() : SplashScreen(),
      builder: EasyLoading.init(),
    );
  }
}
