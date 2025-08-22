import 'package:flutter/material.dart';
import 'package:flutter_project/utils/images.dart';

class TeamComponent extends StatelessWidget {
  const TeamComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Team",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: teamList.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 67,
                      width: 67,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(teamList[index]['image']),
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(teamList[index]['name'], style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff696969))),
                  ],
                ),
              );
            }),
        ),
      ],
    );
  }
}

// Team List

List teamList = [
  {"name": "Mohan Sau", "image": icPerson1},
  {"name": "Mohan Sau", "image": icPerson2},
  {"name": "Mohan Sau", "image": icPerson3},
  {"name": "Mohan Sau", "image": icPerson1},
  {"name": "Mohan Sau", "image": icPerson2},
  {"name": "Mohan Sau", "image": icPerson3},
  {"name": "Mohan Sau", "image": icPerson1},
  {"name": "Mohan Sau", "image": icPerson2},
  {"name": "Mohan Sau", "image": icPerson3},
  {"name": "Mohan Sau", "image": icPerson1},
];
