import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1592860893757-84536a1c9b82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3ByaXRlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    Category(
        name: 'Smoothies',
        imageUrl:
            'https://media.istockphoto.com/photos/two-glasses-of-blueberry-smoothie-picture-id1299939924?b=1&k=20&m=1299939924&s=170667a&w=0&h=61uT2tB1PbuOWRrOWOdcG6OOZ05ZAnZMoIjwkU6X5Pk='),
    Category(
        name: 'Water',
        imageUrl:
            'https://images.unsplash.com/photo-1612134678926-7592c521aa52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1pbmVyYWwlMjB3YXRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  ];
}
