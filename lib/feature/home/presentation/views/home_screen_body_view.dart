import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/presentation/views/category_list_view_items.dart';
import 'package:travel_ui/feature/home/presentation/views/city_category_list_items.dart';
import 'package:travel_ui/feature/home/presentation/views/city_list_view_Items.dart';
import 'package:travel_ui/feature/home/presentation/widgets/sliver_sized_box_height.dart';

import 'custome_app_bar.dart';

class HomeScreenBodyView extends StatelessWidget {
  const HomeScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSizedBoxHeight(height: 12),
        SliverToBoxAdapter(
          child: CustomeAppBar(),
        ),
        SliverSizedBoxHeight(height: 15),
        SliverToBoxAdapter(
          child: CityListViewItems(),
        ),
        SliverSizedBoxHeight(height: 15),
        SliverToBoxAdapter(
          child: CategoryListViewItems(),
        ),
        SliverSizedBoxHeight(height: 15),
        CityCategoryItems(),
      ],
    );
  }
}
