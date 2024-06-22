import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomWebAppBar extends StatelessWidget {
  const CustomWebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Home",
                style: FontStyles.kMediumTextStyle(context).copyWith(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w900
                ),
              )),
                  TextButton(
              onPressed: () {},
              child: Text(
                "Favorite",
                style: FontStyles.kMediumTextStyle(context)
              )),
                  TextButton(
              onPressed: () {},
              child: Text(
                "Cart",
                style: FontStyles.kMediumTextStyle(context)
              )),
                  TextButton(
              onPressed: () {},
              child: Text(
                "Profile",
                style: FontStyles.kMediumTextStyle(context)
              ))
        ],
      ),
      Row(
        children: [
          Text(
            "Slash.",
            style: FontStyles.kMediumTextStyle(context),
          ),
          const SizedBox(
            width: 32,
          ),
          SvgPicture.asset('assets/images/location.svg'),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nasr City",
                style: FontStyles.kSmallTextStyle(context),
              ),
              Text(
                "Cairo",
                style: FontStyles.kSmallTextStyle(context)
                    .copyWith(fontWeight: FontWeight.w700),
              )
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
      SvgPicture.asset('assets/images/Notifcation Icon.svg')
    ]);
  }
}
