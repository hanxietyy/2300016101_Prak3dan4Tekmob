import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amajon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
        elevation: 2,
        backgroundColor: Colors.blue.shade700,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey,
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
                gradient: LinearGradient(
                  colors: [Colors.blue.shade300, Colors.blue.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 8.0,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'PROMO SPESIAL HARI INI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.discount, color: Colors.red, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Gratis Ongkir Seluruh Indonesia',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.local_shipping, color: Colors.green, size: 20),
                    ],
                  ),
                ],
              ),
            ),

            // Kategori Produk
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  _KategoriItem(icon: Icons.shopping_bag, label: 'Pakaian'),
                  _KategoriItem(icon: Icons.watch, label: 'Aksesoris'),
                  _KategoriItem(icon: Icons.devices, label: 'Elektronik'),
                  _KategoriItem(icon: Icons.kitchen, label: 'Peralatan'),
                  _KategoriItem(icon: Icons.sports, label: 'Olahraga'),
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
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(Icons.image, color: Colors.grey),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sepatu Running',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text('4.8 (321 ulasan)', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Rp 750.000', style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                            _AnimatedBuyButton(),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: const [
                            Icon(Icons.local_shipping, size: 16),
                            SizedBox(width: 4),
                            Text('Estimasi tiba 2-4 hari', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Produk 2
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: const EdgeInsets.only(top: 12.0, left: 20.0, right: 10.0, bottom: 18.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 6.0,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(Icons.image, color: Colors.grey),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tas Ransel',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text('4.6 (210 ulasan)', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Rp 350.000', style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                            _AnimatedBuyButton(),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: const [
                            Icon(Icons.local_shipping, size: 16),
                            SizedBox(width: 4),
                            Text('Estimasi tiba 3-5 hari', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Footer Promo
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange.shade300, Colors.orange.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Text(
                'DISKON 50% UNTUK PRODUK PILIHAN HARI INI!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 32, color: Colors.blue.shade700),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

// Widget Tombol Beli Animasi
class _AnimatedBuyButton extends StatefulWidget {
  @override
  __AnimatedBuyButtonState createState() => __AnimatedBuyButtonState();
}

class __AnimatedBuyButtonState extends State<_AnimatedBuyButton> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _scale = 0.95;
        });
      },
      onTapUp: (_) {
        setState(() {
          _scale = 1.0;
        });
      },
      onTapCancel: () {
        setState(() {
          _scale = 1.0;
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade700,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Text(
            'Beli',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}