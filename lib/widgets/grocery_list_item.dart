import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  final GroceryItem groceryItem;

  const GroceryListItem({
    super.key,
    required this.groceryItem,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(groceryItem.name),
        leading: Container(
          width: 24,
          height: 24,
          color: groceryItem.category.color,
        ),
        trailing: Text(groceryItem.quantity.toString()),
      );
}
