import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uas_ecommerce_sendymaulana/models/models.dart';
import 'package:uas_ecommerce_sendymaulana/widgets/widgets.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/about';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => AboutScreen(),
    );
  }

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'About Me'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1470104240373-bc1812eddc9f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb'),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/profile-sendy.jpg",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Center(
                child: Text(
              'Sendy Maulana',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
            subtitle: Center(
                child: Text('Web Developer',
                    style: TextStyle(fontFamily: 'Poppins'))),
          ),
          ListTile(
            title: Text('About Me', style: TextStyle(fontFamily: 'Poppins')),
            subtitle: Text(
                'Hi, Perkenalkan saya Sendy Maulana -19552011260.\nDari Kelas TIFK19CID.\nDi sini sendy membuat sebuah aplikasi E-commerce penjualan makanan ringan untuk membantu penjualan transaksi menjadi lebih mudah',
                style: TextStyle(fontFamily: 'Poppins', letterSpacing: 1)),
          ),
        ],
      ),
    );
  }
}
