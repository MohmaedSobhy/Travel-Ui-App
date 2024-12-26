import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/data/model/category_model.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItemWidget({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsetsDirectional.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
            )
          ],
        ),
        alignment: AlignmentDirectional.center,
        child: Text(
          categoryModel.categoryName,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
