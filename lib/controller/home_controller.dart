import 'package:get/get.dart';
import 'package:my_app/model/makan_model.dart';

class HomeController extends GetxController {
 
  final List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "10.000",
      gambar: "https://images.unsplash.com/photo-1572656631137-7935297eff55?w=500",
      infoMakanan: "Soto ayam khas dengan kuah gurih dan koya lezat.",
      rating: 4.8,
      review: "Sangat enak dan segar!",
    ),
    MakananModel(
      namaMakanan: "Hamburger",
      hargaMakanan: "12.000",
      gambar: "https://images.unsplash.com/photo-1586190848861-99aa4a171e90?w=500",
      infoMakanan: "Burger daging sapi juicy lengkap dengan keju leleh dan selada segar.",
      rating: 4.9,
      review: "Dagingnya tebal dan sangat juicy",
    ),
    MakananModel(
      namaMakanan: "Pizza",
      hargaMakanan: "45.000",
      gambar: "https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500",
      infoMakanan: "Pizza panggang hangat dengan topping keju mozzarella melimpah dan sosis.",
      rating: 4.9,
      review: "Keju molornya juara banget!",
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      hargaMakanan: "15.000",
      gambar: "https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=500",
      infoMakanan: "Nasi goreng spesial dengan bumbu rempah pilihan.",
      rating: 4.7,
      review: "Bumbunya meresap sempurna.",
    ),
    MakananModel(
      namaMakanan: "Steak Beef",
      hargaMakanan: "35.000",
      gambar: "https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?w=500",
      infoMakanan: "Sate ayam bakar pedas gurih dengan sambal khas.",
      rating: 4.6,
      review: "Sambalnya pedas mantap!",
    ),
    MakananModel(
      namaMakanan: "Ramen Udang",
      hargaMakanan: "12.000",
      gambar: "https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=500",
      infoMakanan: "Bakso hangat lengkap dengan siomay dan pangsit goreng.",
      rating: 4.8,
      review: "Kuahnya seger banget pas cuaca dingin.",
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis",
      hargaMakanan: "4.000",
      gambar: "https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=500",
      infoMakanan: "Minuman teh manis dingin yang menyegarkan tenggorokan.",
      rating: 4.9,
      review: "Manisnya pas dan segar.",
    ),
  ];
}