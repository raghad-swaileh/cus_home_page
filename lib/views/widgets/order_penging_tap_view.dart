import 'package:flutter/material.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:hire_harmony/views/widgets/order_tile.dart';

class OrderPengingTapView extends StatelessWidget {
  const OrderPengingTapView({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {
        'title': 'Plumber needed for plumbing...',
        'subtitle': 'Machine fitter needed. Machine fitter needed.',
        'status': 'Pending',
        'statusColor': AppColors.orange,
      },
      {
        'title': 'Machine fitter needed.',
        'subtitle': 'Machine fitter needed. Machine fitter needed.',
        'status': 'Confirmed',
        'statusColor': AppColors.green,
      },
      {
        'title': 'Plumber needed for plumbing...',
        'subtitle': 'Machine fitter needed. Machine fitter needed.',
        'status': 'Pending',
        'statusColor': Colors.purple,
      },
      {
        'title': 'Plumbing Services',
        'subtitle': 'Machine fitter needed. Machine fitter needed.',
        'status': 'Assigned',
        'statusColor': AppColors.navy2,
      },
      {
        'title': 'Plumbing Services',
        'subtitle': 'Machine fitter needed. Machine fitter needed.',
        'status': 'Accepted',
        'statusColor': Colors.pink,
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return OrderTile(
          title: order['title'] as String,
          subtitle: order['subtitle'] as String,
          status: order['status'] as String,
          statusColor: order['statusColor'] as Color,
        );
      },
    );
  }
}
