import 'package:flutter/material.dart';

class profileList {
  IconData icon;
  String name;
  IconData icon2;

  profileList({
    required this.icon,
    required this.name,
    required this.icon2,
  });
}

List<profileList> profile = [
  profileList(icon: Icons.person, name: 'Profile', icon2: Icons.kayaking),
  profileList(icon: Icons.person, name: 'Bookmarked', icon2: Icons.kayaking),
  profileList(icon: Icons.person, name: 'Previous Trips', icon2: Icons.kayaking),
  profileList(icon: Icons.person, name: 'Settings', icon2: Icons.kayaking),
  profileList(icon: Icons.person, name: 'Version', icon2: Icons.kayaking),
];
