import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
      theme: ThemeData(),
      home: const ECommerceScreen(),
    );
  }
}

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amajon Store'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Banner Promo
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'PROMO SPESIAL HARI INI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),

              // Baris info tambahan
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.discount, color: Colors.red),
                    SizedBox(width: 8.0),
                    Text(
                      'Gratis Ongkir Seluruh Indonesia',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8.0),
                    Icon(Icons.local_shipping, color: Colors.green),
                  ],
                ),
              ),

              // Produk 1
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                padding: const EdgeInsets.only(left: 24.0, top: 20.0, right: 16.0, bottom: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Sepatu Running',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.orange, size: 16.0),
                        SizedBox(width: 4.0),
                        Text('4.8 (120 ulasan)'),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rp 750.000',
                          style: TextStyle(color: Colors.blue, fontSize: 16.0),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text(
                            'Beli',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6.0),
                    Row(
                      children: const [
                        Icon(Icons.local_shipping, size: 16.0, color: Colors.grey),
                        SizedBox(width: 4.0),
                        Text('Estimasi sampai 2-3 hari'),
                      ],
                    ),
                  ],
                ),
              ),

              // Produk 2
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                padding: const EdgeInsets.only(left: 16.0, top: 12.0, right: 24.0, bottom: 20.0),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Tas Ransel',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.orange, size: 16.0),
                        SizedBox(width: 4.0),
                        Text('4.6 (85 ulasan)'),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rp 350.000',
                          style: TextStyle(color: Colors.blue, fontSize: 16.0),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text(
                            'Beli',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6.0),
                    Row(
                      children: const [
                        Icon(Icons.local_shipping, size: 16.0, color: Colors.grey),
                        SizedBox(width: 4.0),
                        Text('Estimasi sampai 1-2 hari'),
                      ],
                    ),
                  ],
                ),
              ),

              // Kategori Produk
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        CategoryItem(icon: Icons.shopping_bag, label: 'Pakaian'),
                        CategoryItem(icon: Icons.watch, label: 'Aksesoris'),
                        CategoryItem(icon: Icons.devices, label: 'Elektronik'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        CategoryItem(icon: Icons.kitchen, label: 'Peralatan'),
                        CategoryItem(icon: Icons.book, label: 'Buku'),
                        CategoryItem(icon: Icons.toys, label: 'Mainan'),
                      ],
                    ),
                  ],
                ),
              ),

              // Footer Promo
              Container(
                padding: const EdgeInsets.all(32.0),
                color: Colors.orange.shade100,
                child: const Center(
                  child: Text(
                    'Diskon hingga 70% untuk semua produk akhir pekan ini!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Komponen Kategori Reusable
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8.0),
        Text(label),
      ],
    );
  }
}
