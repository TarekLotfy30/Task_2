import 'package:flutter/material.dart';

Widget searchBar () => TextFormField(
  onTapOutside: (event) =>
      FocusManager.instance.primaryFocus?.unfocus(),
  keyboardType: TextInputType.text,
  style: const TextStyle(
    fontSize: 18,
    color: Colors.white,
  ),
  textInputAction: TextInputAction.search,
  cursorColor: Colors.white,
  decoration: InputDecoration(
    contentPadding:
    const EdgeInsetsDirectional.symmetric(vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
    ),
    prefixIcon: const Icon(
      Icons.search,
      color: Color(0xff858585),
    ),
    hintText: "Search",
    hintStyle: const TextStyle(
      color: Color(0xff858585),
    ),
    filled: true,
    fillColor: const Color(0xff2a2a2a),
  ),
);