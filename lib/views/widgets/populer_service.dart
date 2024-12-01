import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_harmony/models/category.dart';
import 'package:hire_harmony/models/product.dart';
import 'package:hire_harmony/utils/app_colors.dart';

class PopulerService extends StatefulWidget {
  const PopulerService({super.key});

  @override
  State<PopulerService> createState() => _PopulerServiceState();
}

class _PopulerServiceState extends State<PopulerService> {
  late List<Product> filterProducts;
  String? selectedCategoryId = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        itemCount: Category.dummyCategories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final dummyCategory = Category.dummyCategories[index];
          return InkWell(
            onTap: () {
              setState(() {
                if (selectedCategoryId == dummyCategory.id &&
                    selectedCategoryId != null) {
                  selectedCategoryId = null;
                  filterProducts = dummyProducts;
                } else {
                  selectedCategoryId = dummyCategory.id;
                  filterProducts = dummyProducts
                      .where((product) =>
                          product.category.id == selectedCategoryId)
                      .toList();
                }
              });
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
                          dummyCategory.imgUrl,
                          width: 200,
                          height: 100,
                          color: AppColors.grey2,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          dummyCategory.title,
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
