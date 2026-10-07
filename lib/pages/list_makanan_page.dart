import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/list_makanan_controller.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return Card(
              elevation: 10,
              margin: EdgeInsets.only(bottom: 15),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Gambar Makanan
                    Image.network(
                      makanan.gambar,
                      height: 255,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),

                    // 2. Nama Makanan
                    Text(
                      makanan.namaMakanan,
                      style: TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    // 3. Harga Makanan
                    Text(
                      "Rp. " + makanan.hargaMakanan,
                      style: TextStyle(
                        fontSize: 18, 
                        color: Colors.green
                      ),
                    ),
                    SizedBox(height: 5),

                    // 4. Info / Deskripsi Makanan
                    Text(
                      makanan.infoMakanan,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 5),

                    // 5. Rating & Review
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        SizedBox(width: 4),
                        Text(
                          "${makanan.rating} ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("(${makanan.review})"),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}