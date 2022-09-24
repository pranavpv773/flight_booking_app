import 'package:flight_booking_app/app/Home/view/widgets/textform_widget.dart';
import 'package:flight_booking_app/app/core/styles/colors.dart';
import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  const CardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: TabTextforms(
            icon: Icons.flight_takeoff_sharp,
            text: 'From',
            obscureText: false,
            vertical: 2,
            color: AppColor.kPrimary!,
          ),
        ), // ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: TabTextforms(
              icon: Icons.flight_land_rounded,
              color: Colors.blueAccent,
              text: 'To',
              obscureText: false,
              vertical: 0,
            ),
          ),
        ),
        Positioned(
          top: 60,
          right: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: AppColor.kPrimary!,
                  spreadRadius: 1,
                )
              ],
            ),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: AppColor.kPrimary,
              child: Icon(
                Icons.swap_vert,
                color: AppColor.kWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
