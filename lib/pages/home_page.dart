import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _cartCount = 2;
  String _searchQuery = '';

  final List<String> _categories = ['Semua', 'Elektronik', 'Fashion'];

  final List<Map<String, dynamic>> _allProducts = [
    {
      'name': 'Headphone Bluetooth Pro',
      'price': 150000,
      'rating': 4.8,
      'image': Icons.headphones,
      'category': 'Elektronik',
      'color': Colors.indigo,
    },
    {
      'name': 'Smartwatch Series X',
      'price': 89000,
      'rating': 4.5,
      'image': Icons.watch,
      'category': 'Elektronik',
      'color': Colors.teal,
    },
    {
      'name': 'Kaos Polos Premium',
      'price': 55000,
      'rating': 4.7,
      'image': Icons.checkroom,
      'category': 'Fashion',
      'color': Colors.orange,
    },
    {
      'name': 'Sepatu Sneakers',
      'price': 250000,
      'rating': 4.9,
      'image': Icons.directions_run,
      'category': 'Fashion',
      'color': Colors.pink,
    },
    {
      'name': 'Charger Fast 65W',
      'price': 75000,
      'rating': 4.6,
      'image': Icons.bolt,
      'category': 'Elektronik',
      'color': Colors.amber,
    },
    {
      'name': 'Tas Ransel Canvas',
      'price': 180000,
      'rating': 4.3,
      'image': Icons.backpack,
      'category': 'Fashion',
      'color': Colors.brown,
    },
    {
      'name': 'Mouse Wireless',
      'price': 95000,
      'rating': 4.4,
      'image': Icons.mouse,
      'category': 'Elektronik',
      'color': Colors.blue,
    },
    {
      'name': 'Jaket Hoodie',
      'price': 320000,
      'rating': 4.8,
      'image': Icons.dry_cleaning,
      'category': 'Fashion',
      'color': Colors.deepPurple,
    },
  ];

  List<Map<String, dynamic>> get _filteredProducts {
    List<Map<String, dynamic>> result = _allProducts;

    // Filter by category
    if (_tabController.index != 0) {
      result = result
          .where((p) => p['category'] == _categories[_tabController.index])
          .toList();
    }

    // Filter by search
    if (_searchQuery.isNotEmpty) {
      result = result
          .where((p) =>
              p['name'].toString().toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }

    return result;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _categories.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEF5222),
        elevation: 0,
        title: SearchBarWidget(
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Keranjang: $_cartCount item'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
              ),
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$_cartCount',
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEF5222),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 4),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _categories.map((c) => Tab(text: c)).toList(),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: _filteredProducts.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search_off, size: 64, color: Colors.grey),
                  SizedBox(height: 12),
                  Text(
                    'Produk tidak ditemukan',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.72,
              ),
              itemCount: _filteredProducts.length,
              itemBuilder: (context, index) {
                final product = _filteredProducts[index];
                return ProductCard(
                  name: product['name'],
                  price: product['price'],
                  rating: product['rating'],
                  icon: product['image'],
                  color: product['color'],
                  onAddToCart: () {
                    setState(() {
                      _cartCount++;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${product['name']} ditambahkan ke keranjang'),
                        duration: const Duration(seconds: 1),
                        backgroundColor: const Color(0xFFEF5222),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
