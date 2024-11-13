// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
    String model;
    String pk;
    Fields fields;

    Welcome({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String mood;
    DateTime time;
    String feelings;
    int moodIntensity;
    int user;

    Fields({
        required this.mood,
        required this.time,
        required this.feelings,
        required this.moodIntensity,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        mood: json["mood"],
        time: DateTime.parse(json["time"]),
        feelings: json["feelings"],
        moodIntensity: json["mood_intensity"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "mood": mood,
        "time": "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "feelings": feelings,
        "mood_intensity": moodIntensity,
        "user": user,
    };
}
