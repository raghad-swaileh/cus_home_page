import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_harmony/utils/app_colors.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, String>> recentNotifications = List.generate(
    10,
    (index) => {
      "title": "Super Offer",
      "description": "Get 60% off in our first booking",
      "time": "Sun, 12:4${index}pm",
      "image": "assets/images/teacher.jpg",
    },
  );

  final List<Map<String, String>> earlierNotifications = List.generate(
    5,
    (index) => {
      "title": "Special Discount",
      "description": "Get 40% off on all services",
      "time": "Sat, 10:30am",
      "image": "assets/images/chef.png",
    },
  );

  final List<Map<String, String>> achievedNotifications = List.generate(
    5,
    (index) => {
      "title": "Achievement Unlocked",
      "description": "Thanks for being a loyal user!",
      "time": "Fri, 2:15pm",
      "image": "assets/images/mechanic.png",
    },
  );
  List<Map<String, String>> displayedNotifications = [];
  String activeTab = "Recent";
  @override
  void initState() {
    super.initState();
    // Initialize with recent notifications
    displayedNotifications = recentNotifications;
  }

  void switchTab(String tab) {
    setState(() {
      activeTab = tab;
      if (tab == "Recent") {
        displayedNotifications = recentNotifications;
      } else if (tab == "Earlier") {
        displayedNotifications = earlierNotifications;
      } else if (tab == "Achieved") {
        displayedNotifications = achievedNotifications;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.navy),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Notification',
          style: GoogleFonts.montserratAlternates(
            textStyle: TextStyle(
              fontSize: 18,
              color: AppColors.navy,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Save action
            },
            child: Text(
              'Clear All',
              style: GoogleFonts.montserratAlternates(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: AppColors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                 onPressed: () => switchTab("Recent"),
                  child: Text(
                    "Recent",
                    style: TextStyle(
                      color: AppColors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => switchTab("Earlier"),
                  child: Text(
                    "Earlier",
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () => switchTab("Achieved"),
                  child: Text(
                    "Achieved",
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          // Notification List
          Expanded(
            child: ListView.builder(
              itemCount: displayedNotifications.length,
              itemBuilder: (context, index) {
                final notification = displayedNotifications[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(notification["image"]!),
                  ),
                  title: Text(
                    notification["title"]!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(notification["description"]!),
                  trailing: Text(
                    notification["time"]!,
                    style: TextStyle(color: AppColors.grey, fontSize: 12),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
