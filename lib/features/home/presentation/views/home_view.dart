import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/home_view_mobile_body.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/home_view_web_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductCubit>(context).fetchProduct();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: width<=700? const HomeViewMobileBody():const HomeViewWebBody(),
      bottomNavigationBar: width<=700? BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/home.svg')  ,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/favorite.svg'),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/shopping-cart.svg'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/profile-circle.svg'),
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