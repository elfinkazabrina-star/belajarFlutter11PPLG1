import 'package:get/get.dart';
import 'package:my_app/model/makan_model.dart';

class DetailMakananController extends GetxController {
 
  late MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
   
    if (Get.arguments != null) {
      makanan = Get.arguments;
    }
  }
}