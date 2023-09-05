import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re/provider/transfer_provider.dart';

class ViewDetailsTransferScreen extends StatefulWidget {
  String id;

  ViewDetailsTransferScreen({required this.id, Key? key}) : super(key: key);

  @override
  State<ViewDetailsTransferScreen> createState() => _ViewDetailsTransferScreenState();
}

class _ViewDetailsTransferScreenState extends State<ViewDetailsTransferScreen> {
  @override
  Widget build(BuildContext context) {
    final getDataId = Provider.of<TransferProvider>(context)
        .listTransfer
        .firstWhere((element) => element.id == widget.id);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            '${getDataId.name}',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 7),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('${getDataId.imageUrl}'),
                            radius: 40),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 5, bottom: 5),
                        child: Text('potato', style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Text('${getDataId.id}',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 5, bottom: 8),
                        child: Text('Description'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2, left: 5, bottom: 15),
                        child: Text(
                            '${getDataId.descirption}',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child:
                        Text('Warehouse name', style: TextStyle(fontSize: 18)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                    child: Text('Address WH : ${getDataId.address}',
                        style: TextStyle(color: Colors.black54)),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 30, top: 7),
                    child: Text('Warehouse name : ${getDataId.WhName}',
                        style: TextStyle(color: Colors.black54)),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 30, left: 20, bottom: 10),
              child: Text('Transfer to',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                  decoration: InputDecoration(
                      label: Text("Warehouse name",
                          style: TextStyle(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)))),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              width: 300,
              height: 58,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {

                  },
                  child: Text("Transfer")),
            )
          ],
        ),
      ),
    );
  }
}
