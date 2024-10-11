// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  late final VoidCallback avatarOnpressed;
  late final String avatarImage;
  late final String name;
  late final String time;
  late final VoidCallback moreOnPressed;
  late final String videoPostTitle;
  late final String videoPostLink;
  late final VoidCallback likeOnpressed;
  late final VoidCallback commentOnPressed;
  late final VoidCallback shareOnPressed;

  VideoModel(
      {required this.avatarOnpressed,
      required this.avatarImage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.videoPostTitle,
      required this.videoPostLink,
      required this.likeOnpressed,
      required this.commentOnPressed,
      required this.shareOnPressed});

  get videoPostLink => null;
}

List<VideoModel> videoData = [
  VideoModel(
    avatarOnpressed: () => print('Avator clicked'),
    avatarImage: "images/man2.avif",
    name: 'Khan',
    time: "JUst Now",
    moreOnPressed: () => print('More clicked'),
    videoPostTitle: "This is my new profile Video",
    videoPostLink: YoutubePlayer.convertUrlToId(""),
    likeOnpressed: () => {print('like clicked')},
    commentOnPressed: () => print("Comment clicked"),
    shareOnPressed: () => print('share clicked'),
  ),
  VideoModel(
    avatarOnpressed: () => print('Avator clicked'),
    avatarImage: "images/man2.avif",
    name: 'Khan',
    time: "JUst Now",
    moreOnPressed: () => print('More clicked'),
    videoPostTitle: "This is my new profile Video",
    videoPostLink: YoutubePlayer.convertUrlToId(""),
    likeOnpressed: () => {print('like clicked')},
    commentOnPressed: () => print("Comment clicked"),
    shareOnPressed: () => print('share clicked'),
  ),
  VideoModel(
    avatarOnpressed: () => print('Avator clicked'),
    avatarImage: "images/man2.avif",
    name: 'Khan',
    time: "JUst Now",
    moreOnPressed: () => print('More clicked'),
    videoPostTitle: "This is my new profile Video",
    videoPostLink: "images/man2.avif",
    likeOnpressed: () => {print('like clicked')},
    commentOnPressed: () => print("Comment clicked"),
    shareOnPressed: () => print('share clicked'),
  ),
];
