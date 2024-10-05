// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Storymodel {
  final VoidCallback onTap;
  final String image;
  final String username;

  Storymodel({
    required this.onTap,
    required this.image,
    required this.username,
  });
}

List<Storymodel> storyData = [
  Storymodel(
      onTap: () => {print('Carl story clicked')},
      image: "images/man3.jpeg",
      username: "Carl"),
  Storymodel(
      onTap: () => {print('Mike story clicked')},
      image: "images/man4.jpeg",
      username: "Mike"),
  Storymodel(
      onTap: () => {print('Tareq story clicked')},
      image: "images/man5.jpeg",
      username: "Tareq"),
  Storymodel(
      onTap: () => {print('john story clicked')},
      image: "images/man6.jpeg",
      username: "John"),
  Storymodel(
      onTap: () => {print('Jorden story clicked')},
      image: "images/man7.jpeg",
      username: "Jorden"),
];
