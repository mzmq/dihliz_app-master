import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re/provider/transfer_provider.dart';
import 'package:re/provider/withdrawal_provider.dart';
import 'package:re/ui/home/self%20mangement%20of%20invntory/transfer/view_details_transfer_screen.dart';
import 'package:re/ui/home/self%20mangement%20of%20invntory/withdrawd/view__details._withdraw_screen.dart';

class TransferInventoryScreen extends StatefulWidget {
  const TransferInventoryScreen({Key? key}) : super(key: key);

  @override
  State<TransferInventoryScreen> createState() =>
      _TransferInventoryScreenState();
}

class _TransferInventoryScreenState extends State<TransferInventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text('Transfer Inventory',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Consumer<TransferProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.listTransfer.length,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Text('${value.listTransfer[index].name}',
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500)),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: Text(
                              'weight :${value.listTransfer[index].weight} ',
                              style: const TextStyle(
                                  color: Colors.black54, fontSize: 13),
                            )),
                        Text(
                          'stock Id :${value.listTransfer[index].id}',
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 13),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ViewDetailsTransferScreen(
                                    id: value.listTransfer[index].id),
                              ));
                            },
                            child: const Text('Withdraw stock',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 95,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(value.listTransfer[index].imageUrl),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
