// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

List<Message> messageFromJson(String str) => List<Message>.from(json.decode(str).map((x) => Message.fromJson(x)));

String messageToJson(List<Message> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Message {
  String datetimeofmessage;
  String priority;
  String author;
  String sourceorigin;
  String title;
  String messagebody;

  Message({
    required this.datetimeofmessage,
    required this.priority,
    required this.author,
    required this.sourceorigin,
    required this.title,
    required this.messagebody,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    datetimeofmessage: (json["datetimeofmessage"]),
    priority: json["priority"],
    author: json["author"],
    sourceorigin: json["sourceorigin"],
    title: json["title"],
    messagebody: json["messagebody"],
  );

  Map<String, dynamic> toJson() => {
    "datetimeofmessage": datetimeofmessage,
    "priority": priority,
    "author": author,
    "sourceorigin": sourceorigin,
    "title": title,
    "messagebody": messagebody,
  };
}
