import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Transaction',style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10 , ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('Enter inventory',
                            style: TextStyle(color: Colors.black54)),
                      ),
                      Container(

                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('150', style: TextStyle(fontSize: 27)),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.greenAccent.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(2)),
                            child: Row(children: [
                              Text('   Enters   ',
                                  style: TextStyle(color: Colors.green)),
                              Icon(
                                Icons.arrow_upward_rounded,
                                color: Colors.green,
                                size: 12,
                              )
                            ]),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2, vertical: 30),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('Withdrawal of inventory ',
                            style: TextStyle(color: Colors.black54)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('170', style: TextStyle(fontSize: 27)),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.redAccent.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(3)),
                            child: Row(children: [
                              Text('   Withdrawals   ',
                                  style: TextStyle(color: Colors.red)),
                              Icon(
                                Icons.arrow_downward,
                                color: Colors.red,
                                size: 12,
                              )
                            ]),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('Transfer invtory',
                            style: TextStyle(color: Colors.black54)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('4', style: TextStyle(fontSize: 27)),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.greenAccent.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(2)),
                            child: Row(children: [
                              Text('   Trnsfer   ',
                                  style: TextStyle(color: Colors.green)),
                              Icon(
                                Icons.arrow_upward_rounded,
                                color: Colors.green,
                                size: 12,
                              )
                            ]),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              alignment: Alignment.topLeft,
              child: Text('All Transactions', style: TextStyle(fontSize: 22)),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Stock name ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Transaction ID : 12200006555',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Quantity withdrawn : 30 wooden pallet',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Withdraw stock now',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_downward, color: Colors.red),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Stock name ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Transaction ID : 12200006555',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Quantity withdrawn : 30 wooden pallet',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Withdraw stock now',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_upward, color: Colors.green),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Stock name ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Transaction ID : 12200006555',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Quantity withdrawn : 30 wooden pallet',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Withdraw stock now',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_downward, color: Colors.red),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Stock name ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Transaction ID : 12200006555',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Quantity withdrawn : 30 wooden pallet',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Withdraw stock now',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_downward, color: Colors.red),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Stock name ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Transaction ID : 12200006555',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Quantity withdrawn : 30 wooden pallet',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Withdraw stock now',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_upward, color: Colors.green),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Stock name ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Transaction ID : 12200006555',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Quantity withdrawn : 30 wooden pallet',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Withdraw stock now',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_upward, color: Colors.green),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Stock name ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Transaction ID : 12200006555',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text('Quantity withdrawn : 30 wooden pallet',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Withdraw stock now',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_downward, color: Colors.red),
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
