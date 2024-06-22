import 'package:flutter/material.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/offers_list_view_item.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 8,),
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder:(context, index) => const OffersListViewItem(),
         ),
    );
  }
}