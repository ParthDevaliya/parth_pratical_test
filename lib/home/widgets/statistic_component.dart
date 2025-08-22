
import 'package:flutter/material.dart';

class StatisticsComponent extends StatelessWidget {
// ignore: use_super_parameters
const StatisticsComponent({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
         const Text("Statistics", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
         SizedBox(height: 12),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
          topRight: Radius.circular(8)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(" Interests", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: '2024-25',
                  items: ["2024-25", "2023-24"]
                      .map((y) => DropdownMenuItem(value: y, child: Text(y)))
                      .toList(),
                  onChanged: (val) {},
                ),
              )
            ],
          ),
        ),
        Container(
          height: 140,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
          topRight: Radius.circular(8)),
          ),
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(months.length, (index) {
              return Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: intrestList[index].toDouble() * 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(months[index], style: const TextStyle(fontSize: 10)),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}


final months = ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan", "Feb", "Mar"];
final intrestList = [5, 6, 7, 4, 6, 3, 5, 6, 8, 7, 6, 5];