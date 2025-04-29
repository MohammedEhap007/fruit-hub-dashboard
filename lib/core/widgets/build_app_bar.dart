  import 'package:flutter/material.dart';

AppBar buildAppBar({String? title}) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(title ?? ''),
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 0,
    );
  }
