import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/similar_books_section.dart';

import '../../../../../constants.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: p24),
            child: Column(
              children: const[
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(height: 50),
                ),
                SimilarBooksSection(),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
