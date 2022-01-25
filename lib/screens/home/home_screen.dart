import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uas_ecommerce_sendymaulana/models/models.dart';
import 'package:uas_ecommerce_sendymaulana/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'E-Commerce'),
      bottomNavigationBar: CustomNavBar(),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
        ),
        items: Category.categories
            .map((category) => HeroCarouselCard(category: category))
            .toList(),
      )),
    );
  }
}
