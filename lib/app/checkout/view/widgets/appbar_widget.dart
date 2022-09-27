import 'package:flight_booking_app/app/core/styles/colors.dart';
import 'package:flight_booking_app/app/core/styles/styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_backspace_outlined,
              color: AppColor.kBlack,
            )),
        Text(
          'Checkout',
          style: AppTextStyles.headings,
        ),
        const SizedBox(
          width: 60,
        ),
      ],
    );
  }
}
