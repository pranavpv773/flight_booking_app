import 'package:flight_booking_app/app/core/styles/buttons.dart';
import 'package:flight_booking_app/app/core/styles/styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: AppButtonStyle.generalButton,
      child: Text(
        'Get Tickets',
        style: AppTextStyles.buttonText,
      ),
    );
  }
}
