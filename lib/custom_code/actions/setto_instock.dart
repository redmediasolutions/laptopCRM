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

Future settoInstock(
  List<dynamic> jsonItems,
  List<StockRow> stockrow,
) async {
  if (jsonItems == null || stockrow == null) return;

  // Extract stockRef from jsonb structure safely
  final stockIds = jsonItems
      .map((item) {
        if (item is Map<String, dynamic>) {
          final stockRef = item['stockRef'];

          // Handle nested JSON (e.g. {"stockRef": {"id": 123}})
          if (stockRef is Map && stockRef['id'] != null) {
            return stockRef['id'];
          }

          // Handle direct values (e.g. {"stockRef": 123} or "123")
          if (stockRef is int || stockRef is String) {
            return stockRef;
          }
        }
        return null;
      })
      .where((id) => id != null)
      .toList();

  if (stockIds.isEmpty) {
    print('No valid stockRef found to update.');
    return;
  }

  try {
    final response = await Supabase.instance.client
        .from('Stock')
        .update({'isSold': false})
        .inFilter('id', stockIds)
        .select();

    print('✅ Updated stock rows to in-stock: $response');
  } on PostgrestException catch (e) {
    print('❌ Supabase error updating stocks to in-stock: ${e.message}');
  } catch (e) {
    print('❌ Unexpected error: $e');
  }
}
