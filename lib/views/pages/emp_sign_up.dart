/*import 'package:flutter/material.dart';
import 'package:hire_harmony/views/widgets/upload_files.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class EmpSignUp extends StatelessWidget {
  final String stepText;
  final bool isLastStep;
  final bool isDisplay;

  const EmpSignUp(
      {super.key,
      required this.stepText,
      this.isLastStep = false,
      this.isDisplay = false});

  Future<void> _requestPermissions() async {
    // طلب الأذونات
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.storage,
    ].request();

    // تحقق من حالة الأذونات
    if (statuses[Permission.camera]!.isDenied || statuses[Permission.storage]!.isDenied) {
      // التعامل مع حالة الرفض (إظهار رسالة للمستخدم)
      print("تم رفض إذن الكاميرا أو التخزين");
    } else if (statuses[Permission.camera]!.isPermanentlyDenied) {
      // فتح إعدادات التطبيق في حال الرفض الدائم
      openAppSettings();
    }
/*
Future<void> testPermissions() async {
  final status = await Permission.camera.request();
  if (status.isGranted) {
    print("Camera permission granted.");
  } else {
    print("Camera permission denied.");
  }
}
*/
  }

  
  Future<void> _openCamera(BuildContext context) async {
    // طلب الأذونات قبل محاولة استخدام الكاميرا
    await _requestPermissions();

    final ImagePicker _picker = ImagePicker();
    // استخدام الكاميرا لالتقاط صورة
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      // التعامل مع الصورة
      print('تم التقاط الصورة: ${image.path}');
    } else {
      // منطق عند عدم التقاط صورة
      print('تم إلغاء التقاط الصورة');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.orange),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Verify Your Identity",
          style: TextStyle(color: AppColors.black),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25.0),
          child: Divider(
            thickness: 1,
            color: AppColors.grey3,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20, top: 50, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              stepText,
              style: TextStyle(fontSize: 19, color: AppColors.grey2),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            CircleAvatar(
              radius: 70,
              backgroundColor: AppColors.grey3,
              child: Icon(Icons.image, color: AppColors.grey, size: 50),
            ),
            const SizedBox(height: 60),
            if (!isDisplay)
            //to upload image form device
            const FilePickerWidget(),

            if (isDisplay)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "ENSURE YOUR FACE IS WELL-LIT, CLEARLY VISIBLE, AND WITHOUT ACCESSORIES. USE A PLAIN BACKGROUND",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "CAPTURE WITH CAMERA",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.grey2, fontWeight: FontWeight.w500),
                ),
                IconButton(
                  icon: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.orange,
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: AppColors.white,
                    ),
                  ),
                  onPressed: () {
                    _openCamera(context); 
                  },
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orange,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                if (isLastStep) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmpSignUp(
                        stepText: "Step 3: Take a live selfie",
                        isDisplay: true,
                        isLastStep: true,
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmpSignUp(
                        stepText: "Step 2: Upload the back of your ID",
                        isLastStep: true,
                      ),
                    ),
                  );
                }
              },
              child: Text(
                isDisplay ? 'SUBMIT' : 'NEXT',
                style: TextStyle(fontSize: 16, color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/