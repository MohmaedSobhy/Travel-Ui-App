import 'package:flutter/material.dart';
import 'package:travel_ui/core/utils/app_string.dart';
import 'package:travel_ui/feature/home/presentation/views/place_details_view.dart';
import 'package:travel_ui/feature/home/presentation/widgets/city_details_text_view.dart';
import 'package:travel_ui/feature/home/presentation/widgets/custome_icon_widget.dart';
import 'package:travel_ui/feature/home/presentation/widgets/sliver_sized_box_height.dart';

class CityDetailsBodyView extends StatelessWidget {
  const CityDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 2,
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CityDetailsTextView(),
          ),
          SliverSizedBoxHeight(height: 15),
          SliverToBoxAdapter(
            child: Text(
              AppString.welcomeDescription,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ),
          SliverSizedBoxHeight(height: 15),
          SliverToBoxAdapter(
            child: PlaceDetailsView(),
          ),
          SliverSizedBoxHeight(height: 15),
          SliverFillRemaining(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomeIconWidget(icon: Icons.bookmark_outline),
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
