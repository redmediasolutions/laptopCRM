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

Future<void> settoSold(
  List<InvoiceStruct>? invoiceItems,
  List<StockRow>? stockrow,
) async {
  if (invoiceItems == null || stockrow == null) return;

  for (final stock in stockrow) {
    final match = invoiceItems.any(
      (invoice) => invoice.stockRef != null && invoice.stockRef == stock.id,
    );

    if (match) {
      await Supabase.instance.client
          .from('Stock') // your table name
          .update({'isSold': true})
          .eq('id', stock.id)
          .select(); // Required in postgrest >= 2.0.0
    }
  }
}
