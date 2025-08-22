import 'package:flutter/material.dart';
import 'package:flutter_project/utils/images.dart';

class SearchFieldComponent extends StatelessWidget {
  const SearchFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        prefixIcon: Image.asset(icSearch),
        suffixIcon: Image.asset(icFilter),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none
        ),
       ),
    );
  }
}