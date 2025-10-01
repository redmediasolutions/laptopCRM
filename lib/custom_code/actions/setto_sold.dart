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

//
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> settoSold(
  List<InvoiceStruct>? invoiceItems,
  List<StockRow>? stockrow,
) async {
  if (invoiceItems == null || stockrow == null) return;

  // Collect all stock IDs from invoices
  final stockIds = invoiceItems
      .where((invoice) => invoice.stockRef != null)
      .map((invoice) => invoice.stockRef!)
      .toList();

  if (stockIds.isEmpty) return;

  try {
    final response = await Supabase.instance.client
        .from('Stock')
        .update({'isSold': true})
        .inFilter('id', stockIds)
        .select();

    print('Updated stock rows: $response');
  } on PostgrestException catch (e) {
    print('Error updating stocks: ${e.message}');
  } catch (e) {
    print('Unexpected error: $e');
  }
}
