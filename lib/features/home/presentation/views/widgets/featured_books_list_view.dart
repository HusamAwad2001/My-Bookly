import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            // padding: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.only(right: 12),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
