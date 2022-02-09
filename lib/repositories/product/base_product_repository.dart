import 'package:uas_ecommerce_sendymaulana/models/models.dart';

abstract class BaseProductRepository {
  Stream<List<Product>> getAllProducts();
}
