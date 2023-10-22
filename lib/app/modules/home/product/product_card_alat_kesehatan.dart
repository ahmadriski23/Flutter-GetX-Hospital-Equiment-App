// ignore_for_file: unnecessary_string_interpolations
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/home/controllers/home_controller.dart';
import '../../../shared/utils/text_style.dart';

class ProductCardAlatKesehatan extends GetView<HomeController> {
  final String searchText;
  const ProductCardAlatKesehatan({super.key, required this.searchText});
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    final filteredProducts = homeController.products
        .where((product) =>
            product.title.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    if (filteredProducts.isEmpty) {
      return SizedBox(
        height: 100,
        child: Center(
          child: Text(
            "Produk tidak ditemukan",
            style: AppText.blackText,
          ),
        ),
      );
    }
    return SizedBox(
      height: 200,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: filteredProducts.length - 2,
          itemBuilder: (context, index) {
            final product = filteredProducts[index];

            return Container(
              margin: const EdgeInsets.only(right: 20),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text('${product.rating.toStringAsFixed(1)}')
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Image.asset(
                      fit: BoxFit.fill,
                      product.image,
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        product.title,
                        style: AppText.primaryText.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rp. ${product.price.toStringAsFixed(3)}',
                          style: AppText.orangeText.copyWith(fontSize: 12),
                        ),
                        Container(
                          height: 13,
                          width: 50,
                          decoration: BoxDecoration(
                            color: product.stock > 0
                                ? const Color.fromARGB(255, 121, 220, 125)
                                : Colors.red,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                            child: Text(
                              product.stockStatus,
                              style: AppText.grayText
                                  .copyWith(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
