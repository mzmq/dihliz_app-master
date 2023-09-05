import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_capture_field/image_capture_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../../model/inventory/inventory_model.dart';
import '../../../../model/inventory/inventory_provider.dart';



class AddStockScreen extends StatefulWidget {
  const AddStockScreen({Key? key}) : super(key: key);

  @override
  State<AddStockScreen> createState() => _AddStockScreenState();
}

class _AddStockScreenState extends State<AddStockScreen> {
  String? x;
  var selected;
  bool isSelectRadio = false;
  final nameController = TextEditingController();
  final weightController = TextEditingController();
  final _controller = ImageCaptureController();

  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }


  pickImage(ImageSource source)async{
    final ImagePicker _imagePicker= ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);
    if(_file != null){
      return await _file.readAsBytes();
    }
    print('no image selected');
  }
  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<InventoryProvider>(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          getProvider.additem(InventoryModel(
              id: '1',
              name: '${nameController.text}',
              weight: '${weightController.text}',
              icon: Icon(Icons.add_circle),
              status: Text('new'),
              imageUrl: _image!,));
          Navigator.of(context).pop();
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 225, 225, 225),
      appBar: AppBar(

          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Add Stock",
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Stack(

                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 34,
                          backgroundImage: MemoryImage(_image!),
                        )
                      : CircleAvatar(
                          radius: 33,
                          backgroundImage: AssetImage('image/sta.png'),
                        ),
                  Positioned(
                    child: IconButton(
                      onPressed: selectImage,
                      icon: Icon(Icons.add_a_photo_sharp),
                      iconSize: 20,
                    ),
                    bottom: -15,
                    left: 35,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    label: Text('Name', style: TextStyle(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Radio(
                        fillColor: MaterialStateProperty.all(Colors.black),
                        value: "weight",
                        groupValue: x,
                        onChanged: (val) {
                          setState(() {
                            x = val;
                            print(x);
                            isSelectRadio = false;
                            print(isSelectRadio);
                          });
                        },
                      ),
                    ),
                    Text("weight", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Row(
                  children: [
                    Radio(
                      fillColor: MaterialStateProperty.all(Colors.black),
                      value: "wooden pallet",
                      groupValue: x,
                      onChanged: (val) {
                        setState(() {
                          x = val;
                          isSelectRadio = true;
                          print(isSelectRadio);
                        });
                      },
                    ),
                    Text("wooden pallet", style: TextStyle(fontSize: 20)),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: TextField(
                controller: weightController,
                decoration: InputDecoration(
                    label: Text('Wight', style: TextStyle(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            if (isSelectRadio == true)
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('length',
                                  style: TextStyle(color: Colors.black)),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('width',
                                  style: TextStyle(color: Colors.black)),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('height',
                                  style: TextStyle(color: Colors.black)),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity, // Use double.infinity to fill the available width
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: 'Warehouse Name', // Use labelText for the label
                  labelStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust label padding
                  border: InputBorder.none, // Remove input border
                ),
                value: selected,
                onChanged: (val) {
                  setState(() {
                    selected = val;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'warehouse1',
                    child: Container(
                      margin: EdgeInsets.only(left: 15), // Adjust left margin
                      child: Text("Warehouse 1"),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'warehouse2',
                    child: Container(
                      margin: EdgeInsets.only(left: 15), // Adjust left margin
                      child: Text("Warehouse 2"),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'warehouse3',
                    child: Container(
                      margin: EdgeInsets.only(left: 15), // Adjust left margin
                      child: Text("Warehouse 3"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "liquid",
                    label: Text('Material type',
                        style: TextStyle(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.qr_code_scanner_sharp, color: Colors.black),
                    label: Text('Barcode scaner(optional)',
                        style: TextStyle(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    label: Text('Brand', style: TextStyle(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "universal product type",
                    label: Text('UPC', style: TextStyle(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
