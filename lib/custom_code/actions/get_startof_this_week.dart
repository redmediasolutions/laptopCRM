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

Future<List<DateTime>?> getStartofThisWeek() async {
  // Calculate start of week (Sunday)
  final now = DateTime.now();

  int daysToSubtract = now.weekday % 7; // Sunday=0, Monday=1, ..., Saturday=6
  final startOfWeek = DateTime(now.year, now.month, now.day)
      .subtract(Duration(days: daysToSubtract));

  // Calculate end of week (Saturday)
  final endOfWeek = startOfWeek.add(Duration(days: 6));

  return [startOfWeek, endOfWeek];
}
