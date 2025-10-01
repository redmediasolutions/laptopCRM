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

Future updateStockwithInvoiceID(
  List<InvoiceStruct> invoice,
  List<StockRow> stock,
  int invoiceId,
) async {
  if (invoice.isEmpty || stock.isEmpty) return;

  // Collect all stock IDs referenced in the invoice list
  final stockIds = invoice
      .where((item) => item.stockRef != null)
      .map((item) => item.stockRef!)
      .toList();

  if (stockIds.isEmpty) return;

  try {
    final response = await Supabase.instance.client
        .from('Stock')
        .update({'invoiceid': invoiceId})
        .inFilter('id', stockIds)
        .select();

    print('✅ Updated stock rows: $response');
  } on PostgrestException catch (e) {
    print('❌ Supabase error updating stocks: ${e.message}');
  } catch (e) {
    print('❌ Unexpected error: $e');
  }
}
