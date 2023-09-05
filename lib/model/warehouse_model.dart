class warehouseModel {
  var WarehouseID;
  var WarehouseName;
  var WarehousePhoneNumber;
  var WarehousePhoneNumber2;
  var WarehouseManagerName;
  var WarehouseManagerPhonenumber;
  var WarehouseLocation;
  var Address1;
  var Address2;
  var WarehouseCapacityTons;
  var WarehouseCapacityWoodenPallet;
  var Temperature;

  warehouseModel(
      {required this.WarehouseID,
      required this.WarehouseName,
      required this.Address1,
      required this.WarehouseCapacityTons});
}
