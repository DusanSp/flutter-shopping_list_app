import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery_item.dart';
import 'package:shopping_list_app/screens/new_item.dart';
import 'package:shopping_list_app/widgets/grocery_list_item.dart';

class GroceryList extends StatefulWidget {
  final List<GroceryItem> items;

  const GroceryList({super.key, required this.items});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  void _addItem() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const NewItem(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery List'),
        actions: [
          IconButton(
              onPressed: _addItem,
              icon: const Icon(
                Icons.add,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) =>
            GroceryListItem(groceryItem: widget.items[index]),
      ),
    );
  }
}
