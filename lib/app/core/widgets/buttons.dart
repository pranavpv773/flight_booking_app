import 'package:flight_booking_app/app/Home/view/home_screen.dart';
import 'package:flight_booking_app/app/core/routes/routes.dart';
import 'package:flight_booking_app/app/core/styles/buttons.dart';
import 'package:flight_booking_app/app/core/styles/styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        RoutesProvider.removeScreenUntil(
          screen: const HomeScreen(),
        );
      },
      style: AppButtonStyle.generalButton,
      child: Text(
        'Get Tickets',
        style: AppTextStyles.buttonText,
      ),
    );
  }
}
