import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String avatarURL;

  const User({
    this.id,
    @required this.name,
    @required this.avatarURL,
  });
}
