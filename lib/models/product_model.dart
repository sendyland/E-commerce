import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final int price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      category: snap['category'],
      imageUrl: snap['imageUrl'],
      price: snap['price'],
      isRecommended: snap['isRecommended'],
      isPopular: snap['isPopular'],
    );
    return product;
  }

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
      name: 'Soft Drink #1',
      category: 'Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1592860893757-84536a1c9b82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3ByaXRlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      price: 10000,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Smoothies #1',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1632422258929-c31add6af207?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHNtb290aGllc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      price: 12000,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Water #1',
      category: 'Water',
      imageUrl:
          'https://images.unsplash.com/photo-1616118132534-381148898bb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWluZXJhbCUyMHdhdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      price: 5000,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink #2',
      category: 'Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1629203849820-fdd70d49c38e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVwc2l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      price: 10000,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Smoothies #2',
      category: 'Smoothies',
      imageUrl:
          'https://media.istockphoto.com/photos/homemade-blueberry-or-currant-smoothie-with-cottage-cheese-and-fruits-picture-id1314147031?b=1&k=20&m=1314147031&s=170667a&w=0&h=XXvpLcPjKjYTdvz7yVlcXA23bRi0p5-neHN-vSxVINc=',
      price: 12000,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Water #2',
      category: 'Water',
      imageUrl:
          'https://media.istockphoto.com/photos/mineral-water-picture-id1349148583?b=1&k=20&m=1349148583&s=170667a&w=0&h=U9ghlqPqYPDHL41KXOIiB4rNrNBRd8WyAc5H0zjMRdQ=',
      price: 5000,
      isRecommended: false,
      isPopular: false,
    ),
  ];
}
