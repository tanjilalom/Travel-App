import 'package:flutter/material.dart';

class ProfileList {
  IconData icon;
  String name;
  IconData icon2;

  ProfileList({
    required this.icon,
    required this.name,
    required this.icon2,
  });
}

List<ProfileList> profile = [
  ProfileList(icon: Icons.person, name: 'Profile', icon2: Icons.keyboard_arrow_right),
  ProfileList(icon: Icons.bookmark_border_outlined, name: 'Bookmarked', icon2: Icons.keyboard_arrow_right),
  ProfileList(icon: Icons.airplane_ticket_outlined, name: 'Previous Trips', icon2: Icons.keyboard_arrow_right),
  ProfileList(icon: Icons.settings, name: 'Settings', icon2: Icons.keyboard_arrow_right),
  ProfileList(icon: Icons.manage_search_outlined, name: 'Version', icon2: Icons.keyboard_arrow_right),
];
