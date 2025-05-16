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
        title: const Text('Amajon Store By Hnxty'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            // Banner Promo
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  const Text(
                    'PROMO SPESIAL HARI INI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.discount, color: Colors.red),
                      SizedBox(width: 8),
                      Text('Gratis Ongkir Seluruh Indonesia'),
                      SizedBox(width: 8),
                      Icon(Icons.local_shipping, color: Colors.green),
                    ],
                  ),
                ],
              ),
            ),

            // Produk 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 12.0, bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 6.0,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sepatu Running',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text('4.8 (321 ulasan)'),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Rp 750.000', style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Text('Beli', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: const [
                      Icon(Icons.local_shipping, size: 16),
                      SizedBox(width: 4),
                      Text('Estimasi tiba 2-4 hari'),
                    ],
                  ),
                ],
              ),
            ),

            // Produk 2
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(top: 12.0, left: 20.0, right: 10.0, bottom: 18.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 6.0,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Tas Ransel',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text('4.6 (210 ulasan)'),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Rp 350.000', style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: const Text('Beli', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: const [
                      Icon(Icons.local_shipping, size: 16),
                      SizedBox(width: 4),
                      Text('Estimasi tiba 3-5 hari'),
                    ],
                  ),
                ],
              ),
            ),

            // Kategori Produk Responsive
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: const [
                  _KategoriItem(icon: Icons.shopping_bag, label: 'Pakaian'),
                  _KategoriItem(icon: Icons.watch, label: 'Aksesoris'),
                  _KategoriItem(icon: Icons.devices, label: 'Elektronik'),
                  _KategoriItem(icon: Icons.kitchen, label: 'Peralatan'),
                ],
              ),
            ),

            // Footer Promo
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              color: Colors.orange.shade100,
              child: const Text(
                'JANGAN LEWATKAN DISKON 50% UNTUK PRODUK PILIHAN!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget Kategori
class _KategoriItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _KategoriItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.blue),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
