import 'package:flight_booking_app/app/Home/view/home_screen.dart';
import 'package:flight_booking_app/app/Home/view/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/row_list_widget.dart';
import 'widgets/time_label_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),
          PaymentCardsWidgets(
            kWidth: kWidth,
            kHeight: kHeight,
          ),
          CardBuilderWidget(
            kWidth: kWidth,
            kHeight: kHeight,
            actionText: 'Details',
          ),
          TimeLabelCardWidget(
            kWidth: kWidth,
            kHeight: kHeight,
          ),
          const ElavatedButtonWidget(
            action: 'Proceed',
          ),
        ],
      ),
    );
  }
}
