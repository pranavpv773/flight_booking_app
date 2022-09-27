import 'package:flight_booking_app/app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class PaymentCardsWidgets extends StatelessWidget {
  const PaymentCardsWidgets({
    Key? key,
    required this.kWidth,
    required this.kHeight,
  }) : super(key: key);

  final double kWidth;
  final double kHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: kWidth,
        height: kHeight / 10,
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https://imageio.forbes.com/blogs-images/steveolenski/files/2016/07/Mastercard_new_logo-1200x865.jpg?format=jpg&width=960',
              width: 70,
            ),
            Image.network(
              'https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_111x69.jpg',
              width: 70,
            ),
            Image.network(
              'https://www.seekpng.com/png/detail/336-3364024_visa-logo-png-visa-money-bags-tanktop.png',
              width: 70,
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEqB3oG9cWA53QRxc-xcj_JtYAtFqd1txvqsqXHdhBECIkwCPWXmuBvYPdRcCwXcMCl44&usqp=CAU',
              width: 70,
            )
          ],
        ),
      ),
    );
  }
}
