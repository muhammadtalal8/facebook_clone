import 'package:flutter/material.dart';

class NotificationModel {
  late final String name;
  late final String time;
  late final String avator;
  late final String description;

  NotificationModel({
    required this.name,
    required this.avator,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
      name: "Talal",
      avator: "images/man7.jpeg",
      time: "10:34",
      description: "liked"),
  NotificationModel(
      name: "Bilal",
      time: "10:34",
      avator: "images/man6.jpeg",
      description: "Comment"),
  NotificationModel(
      name: "Talal",
      time: "10:34",
      avator: "images/man5.jpeg",
      description: "Friend request send"),
  NotificationModel(
      name: "nabeel",
      time: "10:34",
      avator: "images/man4.jpeg",
      description: "Share"),
  NotificationModel(
      name: "khan",
      time: "10:34",
      avator: "images/man3.jpeg",
      description: "Follow"),
  NotificationModel(
      name: "ali",
      time: "10:34",
      avator: "images/man2.avif",
      description: "Share"),
  NotificationModel(
      name: "Usman",
      time: "10:34",
      avator: "images/man7.jpeg",
      description: "Follow"),
  NotificationModel(
      name: "Hamza",
      time: "10:34",
      avator: "images/man5.jpeg",
      description: "like"),
  NotificationModel(
      name: "fahad",
      time: "10:34",
      avator: "images/man4.jpeg",
      description: "Dislike"),
  NotificationModel(
      name: "Anas",
      time: "10:34",
      avator: "images/man3.jpeg",
      description: "Unfollow"),
];
