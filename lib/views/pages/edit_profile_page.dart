import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_harmony/utils/app_colors.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

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
          TextButton(
            onPressed: () {
              // Save action
            },
            child: Text(
              'Done',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/teacher.jpg'),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.camera_alt, color: Colors.black, size: 16),
                ),
              ),
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  buildTextField(label: 'First Name', hintText: 'First Name'),
                  const SizedBox(height: 10),
                  buildTextField(label: 'Last Name', hintText: 'Last Name'),
                  const SizedBox(height: 10),
                  buildTextField(label: 'Location', hintText: 'Location'),
                  const SizedBox(height: 10),
                  buildTextField(label: 'Mobile Number', hintText: 'Mobile'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({required String label, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SizedBox(height: 10),

        Text(
          label,
          style: GoogleFonts.montserratAlternates(
            textStyle: TextStyle(
              fontSize: 18,
              color: AppColors.navy,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.montserratAlternates(
              textStyle: TextStyle(
                fontSize: 13,
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.navy, width: 1.5),
            ),
            filled: true,
            fillColor: AppColors.grey3,
          ),
        ),
      ],
    );
  }
}
