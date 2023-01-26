// To parse this JSON data, do
//
//     final userData = userDataFromMap(jsonString);

import 'dart:convert';

UserData userDataFromMap(String str) => UserData.fromMap(json.decode(str));

String userDataToMap(UserData data) => json.encode(data.toMap());

class UserData {
  List<CallLocationDatum>? callLocationData;

  UserData({
    this.callLocationData,
  });

  factory UserData.fromMap(Map<String, dynamic> json) => UserData(
        callLocationData: json["call_location_data"] == null
            ? []
            : List<CallLocationDatum>.from(json["call_location_data"]!
                .map((x) => CallLocationDatum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "call_location_data": callLocationData == null
            ? []
            : List<dynamic>.from(callLocationData!.map((x) => x.toMap())),
      };
}

class CallLocationDatum {
  String? image;
  String? text;
  String? secondText;

  CallLocationDatum({
    this.image,
    this.text,
    this.secondText,
  });

  factory CallLocationDatum.fromMap(Map<String, dynamic> json) =>
      CallLocationDatum(
        image: json["image"],
        text: json["text"],
        secondText: json["secondText"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "text": text,
        "secondText": secondText,
      };
}
