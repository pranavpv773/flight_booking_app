import 'package:flight_booking_app/app/Home/view/home_screen.dart';
import 'package:flight_booking_app/app/core/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashProvider with ChangeNotifier {
  Future<void> goHome(BuildContext context) async {
    await Future.delayed(
      const Duration(
        seconds: 5,
      ),
    );
  }
}
