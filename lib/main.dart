import 'package:flutter/material.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:hire_harmony/views/pages/custom_buttom_navbar.dart';
import 'package:hire_harmony/views/pages/emp_home_page.dart';
import 'package:hire_harmony/views/pages/navbar.dart';

void main()  {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.orange),
        useMaterial3: true,
        primaryColor: AppColors.orange,
      ),


      home:const  CustomButtomNavbar(),
      /*const EmpSignUp(stepText: "Step 1: Upload the front of your ID"),*/
      /* const VerificationSuccessPage(
      /*  notificationTitle:'Phone Number Verification Successful',
        notificationMessage:'Your phone number has been verified successfully!',*/
        notificationTitle:'Password Reset Successful',
        notificationMessage:'Your password has been successfully reset. You can now log in with your new password.',
        
        ),
      */
    );
  }
}
