import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:hire_harmony/views/pages/notification_page.dart';
import 'package:hire_harmony/views/pages/search_and_filter.dart';
import 'package:hire_harmony/views/widgets/best_worker.dart';
import 'package:hire_harmony/views/widgets/category_widget.dart';
import 'package:hire_harmony/views/widgets/copy_link.dart';
import 'package:hire_harmony/views/widgets/custom_carousel_indicator.dart';
import 'package:hire_harmony/views/widgets/populer_service.dart';
import 'package:hire_harmony/views/widgets/cus_profile_drawer.dart';

class EmpHomePage extends StatelessWidget {
  const EmpHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const ProfileDrawer(
          name: "Haneen Daoud",
          email: "haneendaoud2023@gmail.com",
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Container(
            color: AppColors.orange,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 25,
                          ),
                          onPressed: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Hi, Raghad',
                          style: GoogleFonts.montserratAlternates(
                            textStyle: TextStyle(
                              fontSize: 18,
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      child: Icon(
                        Icons.notifications_active_outlined,
                        color: AppColors.white,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationPage()),
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for "Indoor Cleaning"',
                      hintStyle: GoogleFonts.montserratAlternates(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      border: InputBorder.none,
                      prefixIcon: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchAndFilter()));
                        },
                        child: Icon(
                          Icons.search,
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14),
            child: Column(
              children: [
                const CustomCarouselIndicator(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Browse all categories',
                      style: GoogleFonts.montserratAlternates(
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: AppColors.navy,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View all >',
                        style: GoogleFonts.montserratAlternates(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const CategoryWidget(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Services on Hire Harmony',
                      style: GoogleFonts.montserratAlternates(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: AppColors.navy,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View all >',
                        style: GoogleFonts.montserratAlternates(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const PopulerService(),
                const SizedBox(height: 24),
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Invite your friends',
                        style: GoogleFonts.montserratAlternates(
                          textStyle: TextStyle(
                            fontSize: 15,
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Introduce your friends to the easiest way to find and hire professionals for your needs.',
                        style: GoogleFonts.montserratAlternates(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.white,
                          foregroundColor: AppColors.navy,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const InviteLinkDialog(
                                link:
                                    "https://your-invite-link.com", // رابط الدعوة
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Invite Friends',
                              style: GoogleFonts.montserratAlternates(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.navy,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(Icons.arrow_forward, size: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Worker Profile',
                      style: GoogleFonts.montserratAlternates(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: AppColors.navy,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View all >',
                        style: GoogleFonts.montserratAlternates(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const BestWorker(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
