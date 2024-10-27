import 'package:flutter/material.dart';

class MessageModel {
  late final String name;
  late final String time;
  late final String avator;
  late final Icon status;
  MessageModel({
    required this.name,
    required this.time,
    required this.avator,
    required this.status,
  });

  static Icon statusOnline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );

  static Icon statusOffline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
      name: "Talal",
      time: "10:34",
      avator: "images/man7.jpeg",
      status: MessageModel.statusOnline),
  MessageModel(
      name: "Bilal",
      time: "10:34",
      avator: "images/man6.jpeg",
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Talal",
      time: "10:34",
      avator: "images/man5.jpeg",
      status: MessageModel.statusOffline),
  MessageModel(
      name: "nabeel",
      time: "10:34",
      avator: "images/man4.jpeg",
      status: MessageModel.statusOnline),
  MessageModel(
      name: "khan",
      time: "10:34",
      avator: "images/man3.jpeg",
      status: MessageModel.statusOffline),
  MessageModel(
      name: "ali",
      time: "10:34",
      avator: "images/man2.avif",
      status: MessageModel.statusOnline),
  MessageModel(
      name: "Usman",
      time: "10:34",
      avator: "images/man7.jpeg",
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Hamza",
      time: "10:34",
      avator: "images/man5.jpeg",
      status: MessageModel.statusOnline),
  MessageModel(
      name: "fahad",
      time: "10:34",
      avator: "images/man4.jpeg",
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Anas",
      time: "10:34",
      avator: "images/man3.jpeg",
      status: MessageModel.statusOnline),
];
