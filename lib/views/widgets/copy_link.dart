import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hire_harmony/utils/app_colors.dart';

class InviteLinkDialog extends StatelessWidget {
  final String link;

  const InviteLinkDialog({
    super.key,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      contentPadding: const EdgeInsets.all(20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Invite Link",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SelectableText(
            link,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.navy2,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              // نسخ الرابط إلى الحافظة
              Clipboard.setData(ClipboardData(text: link)).then((_) {
                // إغلاق الواجهة
                // ignore: use_build_context_synchronously
                Navigator.of(context).pop();
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Link copied to clipboard!"),
                    duration: Duration(seconds: 2),
                  ),
                );
              });
            },
            icon: const Icon(Icons.copy),
            label: const Text("Copy Link"),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.orange,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
