import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: p24),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: p24),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: p24),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
