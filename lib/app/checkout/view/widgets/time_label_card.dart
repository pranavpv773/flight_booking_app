import 'package:flight_booking_app/app/core/styles/colors.dart';
import 'package:flight_booking_app/app/core/styles/styles.dart';
import 'package:flutter/material.dart';

class TimeLabelCardWidget extends StatelessWidget {
  const TimeLabelCardWidget({
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
        height: kHeight / 5,
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://www.nicepng.com/png/detail/300-3007850_saudi-arabian-airlines-is-the-flag-carrier-airline.png',
                width: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Departure',
                    style: AppTextStyles.h3,
                  ),
                  Text(
                    '12:30 Am',
                    style: AppTextStyles.numStyle.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Estimate',
                    style: AppTextStyles.h3,
                  ),
                  Text(
                    '03:00 Am',
                    style: AppTextStyles.numStyle.copyWith(
                      color: AppColor.kPrimary1,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Arrive', style: AppTextStyles.h3),
                  Text(
                    '12:30 Am',
                    style: AppTextStyles.numStyle.copyWith(
                      color: AppColor.kBlack,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Prize', style: AppTextStyles.h3),
                  Text(
                    "\$150",
                    style: AppTextStyles.numStyle.copyWith(
                      color: AppColor.kPrimary,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
