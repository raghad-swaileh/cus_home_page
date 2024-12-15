import 'package:flutter/material.dart';
import 'package:hire_harmony/utils/app_colors.dart';
class OrderTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;
  final Color statusColor;

  const OrderTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text(
              title,
              style:  TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: AppColors.navy),
            ),
             Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                status,
                style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[600],fontSize: 12),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                flex: 1,
                child:Align(alignment:Alignment.centerRight ,
                child:Text(
                  '2 hrs ago',
                  style: TextStyle(color: AppColors.grey, fontSize: 10),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}