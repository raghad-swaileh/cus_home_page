import 'package:flutter/material.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:hire_harmony/views/widgets/order_tile.dart';

class OrderHistoryTapView extends StatelessWidget {
  const OrderHistoryTapView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
        padding: const EdgeInsets.all(10),
        children: [
          OrderTile(
            title: 'Your order has been cancelled',
            subtitle: 'Machine fitter needed. Machine fitter needed.',
            status: 'Cancelled',
            statusColor: AppColors.red,
          ),
          OrderTile(
            title: 'Your order is completed',
            subtitle: 'Machine fitter needed. Machine fitter needed.',
            status: 'Completed',
            statusColor: AppColors.green,
          ),
         
        ],
      );
  }
}