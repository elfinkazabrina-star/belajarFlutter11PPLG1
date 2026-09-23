import 'package:get/get.dart';

class KalkulatorController extends GetxController {

  var hasil = 0.obs;

  void tambah(int angka1, int angka2) {
    int hasilTambah = angka1 + angka2; 
    hasil.value = hasilTambah;
    Get.snackbar(
      "Hasil tambah",
      "hasilnya $hasilTambah", 
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(int angka1, int angka2) {
    int hasilKurang = angka1 - angka2; 
    hasil.value = hasilKurang;
    Get.snackbar(
      "Hasil kurang",
      "hasilnya $hasilKurang", 
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(int angka1, int angka2) {
    int hasilKali = angka1 * angka2; 
    hasil.value = hasilKali;
    Get.snackbar(
      "Hasil kali",
      "hasilnya $hasilKali",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(int angka1, int angka2) {
    int hasilBagi = angka1 ~/ angka2; 
    hasil.value = hasilBagi;
    Get.snackbar(
      "Hasil bagi",
      "hasilnya $hasilBagi", 
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}