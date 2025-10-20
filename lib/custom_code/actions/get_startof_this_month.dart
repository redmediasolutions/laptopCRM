// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<DateTime>?> getStartofThisMonth() async {
  final now = DateTime.now();

  // Start of month
  final startOfMonth = DateTime(now.year, now.month, 1);

  // End of month: move to first day of next month, then subtract 1 day
  final endOfMonth = (now.month < 12)
      ? DateTime(now.year, now.month + 1, 1).subtract(Duration(days: 1))
      : DateTime(now.year + 1, 1, 1).subtract(Duration(days: 1));

  return [startOfMonth, endOfMonth];
}
