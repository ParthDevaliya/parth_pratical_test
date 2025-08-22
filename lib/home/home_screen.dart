import 'package:flutter/material.dart';
import 'package:flutter_project/home/widgets/address_component.dart';
import 'package:flutter_project/home/widgets/features_component.dart';
import 'package:flutter_project/home/widgets/product_component.dart';
import 'package:flutter_project/home/widgets/statistic_component.dart';

import 'widgets/search_field_component.dart';
import 'widgets/team_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            spacing: 12,
            children: [
              AddressComponent(),
              SearchFieldComponent(),
              FeaturesComponent(),
              TeamComponent(),
              ProductComponent(),
              StatisticsComponent(),
              proceedBtn()
            ],
          ),
        ),
      )
    );
  }

  Widget proceedBtn() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          backgroundColor: Color(0xff1B2F62),
          elevation: 2,
        ),
        child: const Text('PROCEED', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
      ),
    );
  }
}
