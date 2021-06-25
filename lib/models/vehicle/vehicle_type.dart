class VehicleTypeList {
  final List<VehicleType> vehicles;

  VehicleTypeList({required this.vehicles});

  factory VehicleTypeList.fromJson(List<dynamic> parsedJson) {
    late List<VehicleType> vehicles = [];
    vehicles = parsedJson.map((i) => VehicleType.fromJson(i)).toList();

    return new VehicleTypeList(vehicles: vehicles);
  }
}

class VehicleType {
  late String brand;
  late List<String> models;

  VehicleType({required this.brand, required this.models});

  VehicleType.fromJson(Map<String, dynamic> json) {
    json = json.isEmpty ? {} : json;

    brand = json.putIfAbsent('brand', () => null);
    models = json.putIfAbsent('models', () => null).cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brand'] = this.brand;
    data['models'] = this.models;
    return data;
  }
}
