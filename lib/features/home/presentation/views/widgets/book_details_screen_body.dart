import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_image.dart';

import '../../../../../constants.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: p24),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
