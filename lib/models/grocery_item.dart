import 'package:shopping_list_app/models/category.dart';

class GroceryItem {
  final String id;
  final String name;
  final int quantity;
  final Category category;

  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'category': category.title,
      };
}
