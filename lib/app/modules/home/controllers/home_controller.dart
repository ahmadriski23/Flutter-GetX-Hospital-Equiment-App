import 'package:get/get.dart';

import '../../../models/layanan.dart';
import '../../../models/product.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final RxString searchText = ''.obs;
  final selectedTypeProduct = 'All Product'.obs;
  final type = [
    'All Product',
    'Layanan Kesehatan',
    'Alat Kesehatan',
    'Jasa Pengantaran',
  ];
  void selectedType(String type) {
    selectedTypeProduct.value = type;
  }

  final selectedTypeLayanan = 'Satuan'.obs;
  final typeLayanan = ['Satuan', 'Paket Pemeriksaan'];
  void selectedLayanan(String typeLayanan) {
    selectedTypeLayanan.value = typeLayanan;
  }

  // * list product
  final List<Product> products = [
    Product(
      title: 'Suntik Steril',
      image: 'assets/img/product.png',
      type: 'Alat Kesehatan',
      stock: 10,
      price: 15.000,
      rating: 4.5,
    ),
    Product(
      title: 'Suntik Steril 2',
      image: 'assets/img/product.png',
      type: 'Alat Kesehatan',
      stock: 0,
      price: 250.000,
      rating: 4.5,
    ),
    Product(
      title: 'Suntik Steril 3',
      image: 'assets/img/product.png',
      type: 'Alat Kesehatan',
      stock: 0,
      price: 300.000,
      rating: 1.5,
    ),
    Product(
      title: 'Suntik Steril 4',
      image: 'assets/img/product.png',
      type: 'Alat Kesehatan',
      stock: 10,
      price: 750.000,
      rating: 4.5,
    ),
    Product(
      title: 'Suntik Steril 5',
      image: 'assets/img/product.png',
      type: 'Alat Kesehatan',
      stock: 2,
      price: 1.000,
      rating: 2,
    ),
  ];

  // * list layanan
  final List<Layanan> layanan = [
    Layanan(
      name: 'PCR Swab Test (Drive Thru)',
      duration: 'Hasil 1 Hari Kerja',
      price: 1.400000,
      place: 'Lenmarc Surabaya',
      location: 'Dukuh Pakis, Surabaya',
      image: 'assets/img/place2.png',
    ),
    Layanan(
      name: 'PCR Swab Test (Drive Thru)',
      duration: 'Hasil 1 Hari Kerja',
      price: 1.400000,
      place: 'Lenmarc Surabaya',
      location: 'Dukuh Pakis, Surabaya',
      image: 'assets/img/place1.png',
    ),
    Layanan(
      name: 'PCR Swab Test (Drive Thru)',
      duration: 'Hasil 1 Hari Kerja',
      price: 1.400000,
      place: 'Lenmarc Surabaya',
      location: 'Dukuh Pakis, Surabaya',
      image: 'assets/img/place2.png',
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
