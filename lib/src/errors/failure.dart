import 'package:flutter/material.dart';

abstract class Failure implements Exception {
  const Failure();

  String getMessage(BuildContext context);
}
