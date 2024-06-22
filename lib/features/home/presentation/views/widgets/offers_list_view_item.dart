import 'package:flutter/material.dart';

class OffersListViewItem extends StatelessWidget {
  const OffersListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    return  Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: width*.88,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/offers.png',fit: BoxFit.cover,),
            ),
      ),
    );
  }
}