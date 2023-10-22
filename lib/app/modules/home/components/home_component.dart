// ignore_for_file: unrelated_type_equality_checks
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/home/layanan_kesehatan/layanan_kesehatan_card.dart';
import 'package:vascomm_app/app/modules/home/widget/paket_pemeriksaan_card.dart';
import 'package:vascomm_app/app/modules/home/widget/track_pemeriksaan_widget.dart';
import 'package:vascomm_app/app/shared/utils/color.dart';
import 'package:vascomm_app/app/shared/utils/text_style.dart';
import '../../../shared/widgets/next_notif.dart';
import '../controllers/home_controller.dart';
import '../layanan_kesehatan/layanan_khusus_widget.dart';
import '../product/product_card.dart';
import '../product/product_card_alat_kesehatan.dart';
import '../widget/solusi_kesehatan_widget.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return Obx(
      () => SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            // * solusi kesehatan widget
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: SolusiKesehatanWidget(),
            ),
            const SizedBox(
              height: 30.0,
            ),
            // * layanan khusus widget
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: LayananKhususWidget(),
            ),
            const SizedBox(
              height: 40.0,
            ),
            // * track pemeriksaan widget
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TrackPemeriksaanWidget(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // * filter and search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopupMenuButton<String>(
                      onSelected: (selectedType) {
                        homeController.selectedTypeProduct(selectedType);
                      },
                      itemBuilder: (BuildContext context) {
                        return homeController.type.map((type) {
                          return PopupMenuItem<String>(
                            value: type,
                            child: Text(type),
                          );
                        }).toList();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30,
                                color: Colors.grey.shade200,
                                offset: const Offset(1, 15))
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/img/filter.png'),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 40,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 30.0,
                              offset: const Offset(1.0, 15.0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: TextField(
                            onChanged: (text) {
                              homeController.searchText.value = text;
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.search,
                                color: AppColors.primaryColor,
                              ),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // * button select product
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 30,
                        color: Colors.grey.shade200,
                        offset: const Offset(1, 15))
                  ],
                ),
                height: 50,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: homeController.type.map((type) {
                      final isSelected =
                          homeController.selectedTypeProduct == type;
                      return GestureDetector(
                        onTap: () {
                          homeController.selectedType(type);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          margin: const EdgeInsets.only(right: 10),
                          width: 150,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : Colors.white),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
                            child: Center(
                              child: Text(
                                type,
                                style: AppText.blackText.copyWith(
                                    color: isSelected
                                        ? Colors.white
                                        : AppColors.blackColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // * product card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Visibility(
                    visible:
                        homeController.selectedTypeProduct == "All Product",
                    child: ProductCard(
                        searchText: homeController.searchText.value),
                  ),
                  Visibility(
                    visible: homeController.selectedTypeProduct ==
                        "Layanan Kesehatan",
                    child: ProductCardAlatKesehatan(
                      searchText: homeController.searchText.value,
                    ),
                  ),
                  Visibility(
                    visible:
                        homeController.selectedTypeProduct == "Alat Kesehatan",
                    child: ProductCardAlatKesehatan(
                      searchText: homeController.searchText.value,
                    ),
                  ),
                  Visibility(
                    visible: homeController.selectedTypeProduct ==
                        "Jasa Pengantaran",
                    child: ProductCardAlatKesehatan(
                      searchText: homeController.searchText.value,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Pilih Tipe Layanan Kesehatan Anda',
                  style: AppText.primaryText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // * button select layanan kesehatan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 30,
                            color: Colors.grey.shade200,
                            offset: const Offset(1, 15))
                      ],
                    ),
                    height: 40,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: homeController.typeLayanan.map((typeLayanan) {
                          final isSelected =
                              homeController.selectedTypeLayanan == typeLayanan;
                          return GestureDetector(
                            onTap: () {
                              homeController.selectedLayanan(typeLayanan);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              width: 150,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: isSelected
                                      ? AppColors.secondaryColor
                                      : Colors.white),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Center(
                                  child: Text(
                                    typeLayanan,
                                    style: AppText.blackText.copyWith(
                                        color: isSelected
                                            ? AppColors.primaryColor
                                            : AppColors.primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList()),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            // * layanan kesehatan card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Visibility(
                    visible: homeController.selectedTypeLayanan == "Satuan",
                    child: LayananKesehatanCard(),
                  ),
                  Visibility(
                    visible: homeController.selectedTypeLayanan ==
                        "Paket Pemeriksaan",
                    child: PaketPemeriksaanCard(),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),
            // * loading
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/loading.png',
                  height: 17,
                  width: 17,
                  fit: BoxFit.fill,
                  color: AppColors.grayColor,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Tampilkan Lebih Banyak',
                  style: AppText.grayText.copyWith(
                    fontSize: 14,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            // * bottom notif
            const NextNotification(),
          ],
        ),
      ),
    );
  }
}
