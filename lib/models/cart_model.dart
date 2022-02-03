import 'package:equatable/equatable.dart';
import 'package:uas_ecommerce_sendymaulana/models/product_model.dart';

class Cart extends Equatable {
  final List<Product> products;
  const Cart({this.products = const <Product>[]});

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    if (subtotal >= 100000) {
      return 0.0;
    } else
      return 10000;
  }

  double total(subtotal, deliveryFree) {
    return subtotal + deliveryFee(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 100000) {
      return 'You have Free Delivery';
    } else {
      double missing = 100000.0 - subtotal;

      return 'Add \Rp ${missing.toStringAsFixed(2)} for FREE DELIVERY';
    }
  }

  String get subTotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);

  @override
  List<Object?> get props => [products];
}
