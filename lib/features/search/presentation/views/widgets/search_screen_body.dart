import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: p24),
      child: Column(
        children: const [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
