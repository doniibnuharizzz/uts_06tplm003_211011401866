import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Shoes',
      debugShowCheckedModeBanner: false, // Menghapus watermark debug
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> nikeShoes = [
    {
      'name': 'Nike SB Zoom Blazer Mid Premium',
      'type': '',
      'color': '',
      'price': 28795,
      'icon':
          '../assets/images/1.png', // Ganti dengan path gambar ikon yang sesuai
    },
    {
      'name': 'Nike Air Zoom Pegasus',
      'type': 'Men\'s Road Running Shoes',
      'color': '',
      'price': 29995,
      'icon':
          '../assets/images/1.png', // Ganti dengan path gambar ikon yang sesuai
    },
    {
      'name': 'Nike ZoomX Vaporfly',
      'type': 'Men\'s Road Racing Shoe',
      'color': '',
      'price': 219695,
      'icon':
          '../assets/images/1.png', // Ganti dengan path gambar ikon yang sesuai
    },
    {
      'name': 'Nike Air Force 1 50',
      'type': 'Older Kids\' Shoe',
      'color': 'White',
      'price': 26295,
      'icon':
          '../assets/images/1.png', // Ganti dengan path gambar ikon yang sesuai
    },
    {
      'name': 'Nike Waffle One',
      'type': 'Men\'s Shoes',
      'color': '',
      'price': 28295,
      'icon':
          '../assets/images/1.png', // Ganti dengan path gambar ikon yang sesuai
    },
  ];

  final List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'doni ibnu hariz`', // Nama profil
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          CircleAvatar(
            backgroundImage:
                AssetImage('../assets/images/2.png'), // Gambar profil
            radius: 50.0,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: nikeShoes.length,
        itemBuilder: (context, index) {
          final shoe = nikeShoes[index];
          final color = _colors[index % _colors.length];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      shoe['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(shoe['type'] ?? ''),
                        SizedBox(height: 4),
                        Text(shoe['color'] ?? ''),
                      ],
                    ),
                    trailing: Text('\$${shoe['price']}'),
                  ),
                ),
                SizedBox(width: 50), // Spasi antara ListTile dan gambar
                Container(
                  width: 50,
                  height: 50,
                  color: color,
                  child: Image.asset(
                    shoe['icon'],
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
