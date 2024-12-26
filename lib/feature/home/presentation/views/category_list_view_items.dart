import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/data/model/category_model.dart';
import 'package:travel_ui/feature/home/presentation/widgets/category_item_widget.dart';

class CategoryListViewItems extends StatelessWidget {
  const CategoryListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CategoryModel.getAllCategory().length,
          itemBuilder: (context, index) {
            return CategoryItemWidget(
              categoryModel: CategoryModel.getAllCategory()[index],
            );
          },
        ),
      ),
    );
  }
}
