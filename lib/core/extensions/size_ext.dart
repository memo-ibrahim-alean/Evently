import 'package:flutter/material.dart';

import '../../main.dart';

extension Responsive on num {
  double get height =>
      MediaQuery.of(navigatorKey.currentContext!).size.height * this;

  double get width => MediaQuery.of(navigatorKey.currentContext!).size.width * this;
}