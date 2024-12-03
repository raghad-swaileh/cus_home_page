import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:hire_harmony/views/pages/edit_profile_page.dart';



class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
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
          'Edit Profile',
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
          IconButton(
            icon: Icon(Icons.edit, color: AppColors.orange),
            onPressed:(){ 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const EditProfilePage()),
              );
            },
          ),
        ],
      ),
      //boxShadow

        body: Column(
          
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/images/teacher.jpg'), // Replace with your image URL
            ),
            const SizedBox(height: 10),
            Text(
              'Haneen',
              style: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: AppColors.navy,
                                fontWeight: FontWeight.bold,
                              ),
            ),
            ),
            Text(
              'haneendaoud@gmail.com',
               style: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
            ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                color:AppColors.white,
                shadowColor: AppColors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person,color:AppColors.orange),
                      title: const Text('Haneen Daoud'),
                      subtitle: const Text('Full name'),
                     titleTextStyle: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AppColors.navy,
                                fontWeight: FontWeight.bold,
                              ),
            ),
             subtitleTextStyle: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 13,
                                color: AppColors.navy,
                                fontWeight: FontWeight.w400 ,
                              ),
            ),

                    ),
                    const Divider(),
                    ListTile(
                      leading: Icon(Icons.location_on,color:AppColors.orange),
                      title: const Text('Qalqilia, palestine'),
                      subtitle: const Text('Location'),
                      titleTextStyle: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AppColors.navy,
                                fontWeight: FontWeight.bold,
                              ),
            ),
             subtitleTextStyle: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 13,
                                color: AppColors.navy,
                                fontWeight: FontWeight.w400,
                              ),
            ),

                    ),
                    const Divider(),
                    ListTile(
                      leading: Icon(Icons.phone,color:AppColors.orange),
                      title: const Text('+9720563214'),
                      subtitle: const Text('Contact'),
                      titleTextStyle: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AppColors.navy,
                                fontWeight: FontWeight.bold,
                              ),
            ),
             subtitleTextStyle: GoogleFonts.montserratAlternates(
                              textStyle: TextStyle(
                                fontSize: 13,
                                color: AppColors.navy,
                                fontWeight: FontWeight.w400,
                              ),
            ),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
