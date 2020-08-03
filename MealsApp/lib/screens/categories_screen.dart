import 'package:flutter/material.dart';

import '../dummay_data.dart';
import '../widgets/categories_item.dart';

class CategoriesScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map((catData) =>
              CategoriesItem(catData.id, catData.title, catData.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
