class monitoringModel {


  String value;
  int num;

  monitoringModel({required this.value, required this.num});

  String toString() {
    return '{ ${this.value}, ${this.num} }';
  }
}