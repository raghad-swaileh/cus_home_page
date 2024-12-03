import 'package:flutter/material.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:hire_harmony/views/pages/DeleteAccountScreeen/account_deletion.dart';
import 'package:hire_harmony/views/pages/edit_profile_page.dart';
import 'package:hire_harmony/views/pages/profile_info.dart';

Widget buildMenuContainer(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    padding: const EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      children: _buildMenuItems(context), // Pass the context here
    ),
  );
}

List<Widget> _buildMenuItems(BuildContext context) {
  final menuItems = [
    {'icon': Icons.person, 'text': 'Profile', 'route': const ProfileInfo()},
    {'icon': Icons.bookmark, 'text': 'Bookmarked', 'route': null}, // Add route here later
    {'icon': Icons.history, 'text': 'Previous Trips', 'route': null},
    {'icon': Icons.settings, 'text': 'Settings', 'route': null},
    {'icon': Icons.color_lens, 'text': 'Theme', 'route': null},
    {'icon': Icons.info, 'text': 'Delete Account', 'route': const AccountDeletionScreen()},

  ];

  return menuItems
      .map(
        (item) => Column(
          children: [
            ListTile(
              leading: Icon(
                item['icon'] as IconData,
                color: AppColors.orange,
              ),
              title: Text(item['text'] as String),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                if (item['route'] != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => item['route'] as Widget,
                    ),
                  );
                }
              },
            ),
            const Divider(
              color: Colors.grey, // Adjust color if needed
              thickness: 0.5,
              height: 1,
            ),
          ],
        ),
      )
      .toList();
}
