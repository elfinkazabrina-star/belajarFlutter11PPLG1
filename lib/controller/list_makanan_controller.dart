import 'package:get/get.dart';
import '../model/makan_model.dart';

class ListMakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "10.000",
      gambar: "https://images.unsplash.com/photo-1572656631137-7935297eff55?w=500",
      infoMakanan: "Soto ayam khas dengan kuah gurih dan koya lezat.",
      rating: 4.8,
      review: "Sangat enak dan segar!",
    ),
    MakananModel(
      namaMakanan: "Jenang Kudus",
      hargaMakanan: "35.000",
      gambar: "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=500",
      infoMakanan: "Oleh-oleh khas Kudus dengan tekstur kenyal dan rasa manis gurih.",
      rating: 4.7,
      review: "Manisnya pas dan legit!",
    ),
    MakananModel(
      namaMakanan: "Pindang Kerbau",
      hargaMakanan: "20.000",
      gambar: "https://images.unsplash.com/photo-1544025162-d76694265947?w=500",
      infoMakanan: "Nasi pindang daging kerbau yang sangat lezat.",
      rating: 4.9,
      review: "Dagingnya empuk banget.",
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng",
      hargaMakanan: "15.000",
      gambar: "https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=500",
      infoMakanan: "Nasi goreng spesial dengan telur dan kerupuk.",
      rating: 4.7,
      review: "Bumbunya meresap sempurna.",
    ),
    MakananModel(
      namaMakanan: "Sate Thaichan",
      hargaMakanan: "25.000",
      gambar: "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=500",
      infoMakanan: "Sate ayam bumbu kacang gurih manis dengan lontong.",
      rating: 4.6,
      review: "Bumbu kacangnya mantap.",
    ),
  ];
}