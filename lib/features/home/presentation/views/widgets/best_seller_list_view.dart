import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemBuilder: (context, index) {
        return const BookListViewItem();
      },
    );
  }
}
