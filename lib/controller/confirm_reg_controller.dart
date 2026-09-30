import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String alamat;
  late String kelamin;
  late String email;
  late String noWa;

  @override
  void onInit() {
    super.onInit();
    nama = Get.arguments['nama'];
    alamat = Get.arguments['alamat'];
    kelamin = Get.arguments['kelamin'];
    email = Get.arguments['email'];
    noWa = Get.arguments['noWa'];
  }
}