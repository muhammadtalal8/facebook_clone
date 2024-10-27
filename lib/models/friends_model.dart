import 'package:flutter/material.dart';

class FriendsModel {
  final String name;
  final String avator;

  FriendsModel({
    required this.name,
    required this.avator,
  });
}

List<FriendsModel> friendsData = [
  FriendsModel(name: 'Khan', avator: "images/man2.avif"),
  FriendsModel(name: 'bilal', avator: "images/man3.jpeg"),
  FriendsModel(name: 'Nabeel', avator: "images/man4.jpeg"),
  FriendsModel(name: 'Talal', avator: "images/man5.jpeg"),
  FriendsModel(name: 'KHanjee', avator: "images/man6.jpeg"),
  FriendsModel(name: 'fahad', avator: "images/man7.jpeg"),
  FriendsModel(name: 'Hamza', avator: "images/download (1).jpeg"),
];
