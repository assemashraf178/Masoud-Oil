class DataModel {
  String? name;
  String? phone;
  String? oilType;
  String? notes;
  String? carType;
  String? address;
  double? latitude;
  double? longitude;
  String? date;

  DataModel({
    this.name,
    this.phone,
    this.oilType,
    this.notes,
    this.carType,
    this.address,
    this.latitude,
    this.longitude,
    this.date,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        name: json["name"],
        phone: json["phone"],
        oilType: json["oilType"],
        notes: json["notes"],
        carType: json["carType"],
        address: json["address"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "oilType": oilType,
        "notes": notes,
        "carType": carType,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "date": date,
      };
}
