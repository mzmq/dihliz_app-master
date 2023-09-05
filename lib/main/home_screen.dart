import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../home/self mangement of invntory/self_management_of_inventory_screen.dart';
import '../home/stock_monitoring_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _callNumber() async {
    var number = '0777363661';
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              "Inventory",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SelfManagementOfInventoryScreen(),
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelfManagementOfInventoryScreen(),
                          ));
                        },
                        child: Container(
                            child: Text(
                              "Self management of inventory",
                              style: TextStyle(fontSize: 17),
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "you can enter ,with drew and trnsfer\nthe invertory alone",
                          style: TextStyle(fontSize: 10, color: Colors.black38),
                        ),
                      ),
                      Container(
                          child: TextButton.icon(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SelfManagementOfInventoryScreen(),
                                ));
                              },
                              icon: Icon(
                                Icons.apps_rounded,
                                color: Colors.black,
                                size: 20,
                              ),
                              label: Text(
                                "control panel",
                                style: TextStyle(color: Colors.black),
                              )),
                          margin: EdgeInsets.only(top: 15, left: 15)),
                    ],
                  ),
                  Container(
                    child: Image.asset('image/SELF.png', width: 56),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: _callNumber,
                      child: Container(
                          child: Text(
                            "call customer care",
                            style: TextStyle(fontSize: 17),
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "you can add your inventory thought\ncustomer care",
                        style: TextStyle(fontSize: 10, color: Colors.black38),
                      ),
                    ),
                    Container(
                        child: TextButton.icon(
                            onPressed: _callNumber,
                            icon: Icon(
                              Icons.call,
                              color: Colors.black87,
                              size: 20,
                            ),
                            label: Text(
                              "call now",
                              style: TextStyle(color: Colors.black87),
                            )),
                        margin: EdgeInsets.only(top: 15, left: 15)),
                  ],
                ),
                Container(
                  child: Image.asset(
                    'image/Customer careCustomer care.png',
                    width: 110,
                    alignment: Alignment.topRight,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
              "Monitoring",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => StockMonitoringScreen(),
              ));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 40, 40, 51)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "stock Monitoring",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Analysis of your invntory\ncan be found",
                            style:
                            TextStyle(fontSize: 14, color: Colors.white30)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 5),
                        child: TextButton(
                          onPressed: () {},
                          child: Text("view",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.asset(
                      'image/analytics.png',
                      width: 110,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
