import 'package:flight_booking_app/app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class ElavatedButtonWidget extends StatelessWidget {
  const ElavatedButtonWidget({
    Key? key,
    required this.action,
  }) : super(key: key);
  final String action;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: AppColor.kPrimary1,
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(action),
      ),
    );
  }
}
