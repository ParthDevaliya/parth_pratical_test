import 'package:flutter/material.dart';
import 'package:flutter_project/utils/images.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Product",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12),
        GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.76,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12
          ),
          itemCount: productList.length,  
          itemBuilder: (context, index) {
            final productInfo = productList[index];
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 6),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(productInfo['image'], height: 120, width: double.infinity),
                      ),
                      Positioned(
                        right: 0,
                        top:4,
                        child: Image.asset(ic_arrow,height: 40))
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(productInfo['name'], textAlign: TextAlign.left, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  Spacer(),
                  Text('Interests Shown: 23', textAlign: TextAlign.left, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey)),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}


// Product List

List productList = [
  {'id':1, 'name': "Manufacturing\nSand", 'image': imgProduct},
  {'id':2, 'name': "Concrete Sand", 'image':imgProduct},
];