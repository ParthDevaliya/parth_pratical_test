import 'package:flutter/material.dart';
import 'package:flutter_project/utils/images.dart';

class FeaturesComponent extends StatelessWidget {
  const FeaturesComponent({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Features",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
          ),
          alignment: Alignment.center,
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.66,
              mainAxisSpacing: 2,
              crossAxisSpacing: 4
            ),
            itemCount: featuresList.length,  
            itemBuilder: (context, index) {
              final featureInfo = featuresList[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(Icons.circle, size: 70, color: Color(0xffFFED29)),
                      ),
                      Positioned(
                        bottom: 0,
                        left:0,
                        right:0,
                        child: Image.asset(featureInfo['image'], height: 50))
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(featureInfo['name'], textAlign: TextAlign.center, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}


// Feature List

List featuresList = [
  {'id':1, 'name': "Material Marketpalce", 'image': icMaterial},
  {'id':2, 'name': "Construction Line Marketplace", 'image':icConst},
  {'id':3, 'name': "ERP", 'image':icERP},
  {'id':4, 'name': "CRM", 'image':icCRM},
  {'id':5, 'name': "HRMS", 'image':icHRM},
  {'id':6, 'name': "Project Management", 'image':icProject},
  {'id':7, 'name': "Portfolio Management", 'image':icPortfolio},
  {'id':8, 'name': "OVP", 'image':icOVP}
];