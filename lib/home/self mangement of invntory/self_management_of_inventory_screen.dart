import 'package:dihliz_app/home/self%20mangement%20of%20invntory/transfer/transfer_inventory_screen.dart';
import 'package:dihliz_app/home/self%20mangement%20of%20invntory/withdrawd/withdrawal_of_inventory_screen.dart';
import 'package:flutter/material.dart';

import 'enter/enter_inventory_screen.dart';
import 'my stock/my_stock_screen.dart';

class SelfManagementOfInventoryScreen extends StatefulWidget {
  const SelfManagementOfInventoryScreen({Key? key}) : super(key: key);

  @override
  State<SelfManagementOfInventoryScreen> createState() => _SelfManagementOfInventoryScreenState();
}

class _SelfManagementOfInventoryScreenState extends State<SelfManagementOfInventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 231, 231),
        appBar: AppBar(

          centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "Self management of inventory",
              style: TextStyle(color: Colors.black),
            ),
            titleSpacing: 35),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
              child: Text(
                "operation",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => EnterInventoryScreen(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                              "Enter Inventory",
                              style: TextStyle(fontSize: 17),
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Your invntory can be added to\nthe werehous",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black38),
                          ),
                        ),
                        Container(
                            child: TextButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EnterInventoryScreen(),
                                  ));
                                },
                                icon: Icon(
                                  Icons.call_made_outlined,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                label: Text(
                                  "Enter stock Now",
                                  style: TextStyle(color: Colors.black),
                                )),
                            margin: EdgeInsets.only(top: 7, left: 15)),
                      ],
                    ),
                    Container(
                      child: Image.asset('image/Artboard 2.png', width: 110),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WithdrawalOfInventoryScreen(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                              "Withdrawad of inventory",
                              style: TextStyle(fontSize: 17),
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "you can withdrawad your invmtory\nfrom the werehous",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black38),
                          ),
                        ),
                        Container(
                            child: TextButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WithdrawalOfInventoryScreen(),
                                  ));
                                },
                                icon: Icon(
                                  Icons.call_received,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                label: Text(
                                  "Withdrawad Stock Now",
                                  style: TextStyle(color: Colors.black),
                                )),
                            margin: EdgeInsets.only(top: 7, left: 15)),
                      ],
                    ),
                    Container(
                      child: Image.asset(
                          'image/Withdrawal of inventoryWithdrawal of inventory.png',
                          width: 100),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TransferInventoryScreen(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                              "Transfer Inventory",
                              style: TextStyle(fontSize: 17),
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "you can add your inventory thought\ncustomer care",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black38),
                          ),
                        ),
                        Container(
                            child: TextButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => TransferInventoryScreen(),
                                  ));
                                },
                                icon: Icon(
                                  Icons.moving,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                label: Text(
                                  "Transfer Stock Now",
                                  style: TextStyle(color: Colors.black87),
                                )),
                            margin: EdgeInsets.only(top: 7, left: 15)),
                      ],
                    ),
                    Container(
                      child: Image.asset(
                        'image/moving inventory.png',
                        width: 110,
                        alignment: Alignment.topRight,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Text(
                "Stocks",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Container(
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
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyStockScreen(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                            "my stock ( Name werehouse )",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Analysis of your invntory\ncan be found",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white30)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20, left: 5),
                          child: TextButton.icon(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyStockScreen(),
                                ));
                              },
                              icon: Icon(
                                Icons.remove_red_eye_rounded,
                                size: 16,
                                color: Colors.white,
                              ),
                              label: Text(
                                "view your stock",
                                style: TextStyle(color: Colors.white),
                              ))),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.asset(
                      'image/ My stock White.png',
                      width: 61,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
