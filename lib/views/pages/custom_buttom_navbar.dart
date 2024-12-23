import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:hire_harmony/views/pages/emp_home_page.dart';
import 'package:hire_harmony/views/pages/favorites_page.dart';
import 'package:hire_harmony/views/pages/messages_page.dart';
import 'package:hire_harmony/views/pages/order_page.dart';
import 'package:hire_harmony/views/pages/profile_page.dart';

class CustomButtomNavbar extends StatefulWidget {
  const CustomButtomNavbar({super.key});

  @override
  State<CustomButtomNavbar> createState() => _CustomButtomNavbarState();
}

class _CustomButtomNavbarState extends State<CustomButtomNavbar> {
  int currentPageIndex = 2; // Default to Home Page

  final List<Widget> pages = const [
    MessagesPage(),
    OrderPage(),
    EmpHomePage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      
      body: pages[currentPageIndex],
      bottomNavigationBar: size.width >= 800
          ? null
          : NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.all(
                  GoogleFonts.montserratAlternates(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.navy,
                    ),
                  ),
                ),
              ),
              child: NavigationBar(
                onDestinationSelected: (int index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                // ignore: deprecated_member_use
                backgroundColor: AppColors.white.withOpacity(0.85),
                indicatorColor: AppColors.orange,
                selectedIndex: currentPageIndex,
                elevation: 0,
                destinations: [
                  NavigationDestination(
                    selectedIcon:
                        const Icon(Icons.message, color: Colors.white),
                    icon: Icon(Icons.message_outlined, color: AppColors.navy),
                    label: 'Messages',
                  ),
                  NavigationDestination(
                    selectedIcon: const Icon(Icons.list, color: Colors.white),
                    icon: Icon(Icons.list_alt_outlined, color: AppColors.navy),
                    label: 'My Order',
                  ),
                  NavigationDestination(
                    selectedIcon: const Icon(Icons.home, color: Colors.white),
                    icon: Icon(Icons.home_outlined, color: AppColors.navy),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    selectedIcon:
                        const Icon(Icons.favorite, color: Colors.white),
                    icon: Icon(Icons.favorite_border, color: AppColors.navy),
                    label: 'Favorite',
                  ),
                  NavigationDestination(
                    selectedIcon: const Icon(Icons.person, color: Colors.white),
                    icon: Icon(Icons.person_2_outlined, color: AppColors.navy),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
    );
  }
}
