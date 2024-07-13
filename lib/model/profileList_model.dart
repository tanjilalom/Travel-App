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
  profileList(icon: Icons.person, name: 'Profile', icon2: Icons.keyboard_arrow_right),
  profileList(icon: Icons.bookmark_border_outlined, name: 'Bookmarked', icon2: Icons.keyboard_arrow_right),
  profileList(icon: Icons.airplane_ticket_outlined, name: 'Previous Trips', icon2: Icons.keyboard_arrow_right),
  profileList(icon: Icons.settings, name: 'Settings', icon2: Icons.keyboard_arrow_right),
  profileList(icon: Icons.manage_search_outlined, name: 'Version', icon2: Icons.keyboard_arrow_right),
];
