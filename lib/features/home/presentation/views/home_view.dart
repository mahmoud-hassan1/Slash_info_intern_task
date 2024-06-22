import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/home_view_mobile_body.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/home_view_web_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: width<=700? const HomeViewMobileBody():const HomeViewWebBody(),
      bottomNavigationBar: width<=700? BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded)  ,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,

        selectedLabelStyle:  FontStyles.kSmallTextStyle(context).copyWith(fontWeight: FontWeight.w700), 
        unselectedLabelStyle: FontStyles.kSmallTextStyle(context), 
      ):const SizedBox(),
    );
  }
}