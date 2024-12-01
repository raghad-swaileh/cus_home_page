import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_harmony/models/best_worker_list.dart';
import 'package:hire_harmony/utils/app_colors.dart';
class BestWorker extends StatefulWidget {
  const BestWorker({super.key});

  @override
  State<BestWorker> createState() => _BestWorkerState();
}

class _BestWorkerState extends State<BestWorker> {
  String? selectedCategoryId = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        itemCount: BestWorkerList.dummyBestWorker.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final dummyBestWorker = BestWorkerList.dummyBestWorker[index];
          return InkWell(
            onTap: () {
             
            },
            child: Stack(
              children: [
                Card(
                  color: AppColors.orangelight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          dummyBestWorker.imgUrl,
                          width: 200,
                          height: 100,
                          color: AppColors.grey2,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          dummyBestWorker.title,
                          style: GoogleFonts.montserratAlternates(
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: AppColors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 20,
                    right: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
