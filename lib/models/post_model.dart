// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PostModel {
  late final VoidCallback avatarOnpressed;
  late final String avatarImage;
  late final String name;
  late final String time;
  late final VoidCallback moreOnPressed;
  late final String postTitle;
  late final String postImage;
  late final VoidCallback likeOnpressed;
  late final VoidCallback commentOnPressed;
  late final VoidCallback shareOnPressed;

  PostModel(
      {required this.avatarOnpressed,
      required this.avatarImage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.postTitle,
      required this.postImage,
      required this.likeOnpressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<PostModel> postData = [
  PostModel(
    avatarOnpressed: () => print('Avator clicked'),
    avatarImage: "images/man2.avif",
    name: 'Khan',
    time: "JUst Now",
    moreOnPressed: () => print('More clicked'),
    postTitle: "This is my new profile picture",
    postImage: "images/man2.avif",
    likeOnpressed: () => {print('like clicked')},
    commentOnPressed: () => print("Comment clicked"),
    shareOnPressed: () => print('share clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('Avator clicked'),
    avatarImage: "images/man2.avif",
    name: 'Khan',
    time: "JUst Now",
    moreOnPressed: () => print('More clicked'),
    postTitle: "This is my new profile picture",
    postImage: "images/man2.avif",
    likeOnpressed: () => {print('like clicked')},
    commentOnPressed: () => print("Comment clicked"),
    shareOnPressed: () => print('share clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('Avator clicked'),
    avatarImage: "images/man2.avif",
    name: 'Khan',
    time: "JUst Now",
    moreOnPressed: () => print('More clicked'),
    postTitle: "This is my new profile picture",
    postImage: "images/man2.avif",
    likeOnpressed: () => {print('like clicked')},
    commentOnPressed: () => print("Comment clicked"),
    shareOnPressed: () => print('share clicked'),
  ),
];
