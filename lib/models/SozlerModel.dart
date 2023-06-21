class SozlerModel {
  int id;
  String soz;

  SozlerModel({this.soz});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["soz"] = soz;
    return map;
  }

  SozlerModel.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    soz = map["soz"];
  }
}
