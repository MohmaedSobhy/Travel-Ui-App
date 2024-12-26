class CategoryModel {
  final String categoryName;

  CategoryModel({required this.categoryName});

  static List<CategoryModel> getAllCategory() {
    return [
      CategoryModel(categoryName: 'Best Places'),
      CategoryModel(categoryName: 'Most Visited'),
      CategoryModel(categoryName: 'Favourite'),
      CategoryModel(categoryName: 'New Added'),
      CategoryModel(categoryName: 'Hotels'),
      CategoryModel(categoryName: 'Restaurants'),
    ];
  }
}
