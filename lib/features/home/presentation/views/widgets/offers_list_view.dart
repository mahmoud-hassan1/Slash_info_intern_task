import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import CarouselSlider package
import 'package:slash_info_task/features/home/presentation/views/widgets/offers_list_view_item.dart';

class OffersListView extends StatefulWidget {
  const OffersListView({super.key});

  @override
  OffersListViewState createState() => OffersListViewState();
}

class OffersListViewState extends State<OffersListView> {
  int _current = 0; // Current index for the slider

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 2, // Number of items in the slider
          itemBuilder: (context, index, realIndex) {
            return const OffersListViewItem(); // Your custom list item widget
          },
          options: CarouselOptions(
            height: (width*.35).clamp(0, 270),
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.88,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index; // Update the current page index
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(2, (index) => buildIndicator(index)), // Generate indicators
        ),
      ],
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width:_current ==index? 15:8.0,
      height: 8.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
        borderRadius:_current ==index? BorderRadius.circular(10):null,
        shape: _current ==index?BoxShape.rectangle :BoxShape.circle,
        color: _current == index ? Colors.black : Colors.grey,
      ),
    );
  }
}