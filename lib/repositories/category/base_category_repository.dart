import 'package:uas_ecommerce_sendymaulana/models/models.dart';

abstract class BaseCategoryRepository {
  Stream<List<Category>> getAllCategories();
}
