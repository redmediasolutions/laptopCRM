// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_svg/flutter_svg.dart';
import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:path_provider/path_provider.dart';
// ignore: deprecated_member_use
import 'dart:html' as html; // 👈 for web file download
import 'dart:convert'; // 👈 this provides utf8.encode
import 'dart:typed_data';

class DownloadableBarcode extends StatefulWidget {
  const DownloadableBarcode({
    super.key,
    this.width,
    this.height,
    required this.data,
  });

  final double? width;
  final double? height;
  final String data;

  @override
  State<DownloadableBarcode> createState() => _DownloadableBarcodeState();
}

class _DownloadableBarcodeState extends State<DownloadableBarcode> {
  late String svgData;

  @override
  void initState() {
    super.initState();
    _generateSvg();
  }

  void _generateSvg() {
    final barcode = Barcode.code39(); // ✅ You asked specifically for Code39

    svgData = barcode.toSvg(
      widget.data,
      width: widget.width ?? 200,
      height: widget.height ?? 80,
      drawText: true,
    );
  }

  void _downloadSvg() {
    final bytes = utf8.encode(svgData);
    final blob = html.Blob([Uint8List.fromList(bytes)], 'image/svg+xml');
    final url = html.Url.createObjectUrlFromBlob(blob);

    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "${widget.data}.svg")
      ..click();

    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _downloadSvg,
      child: SvgPicture.string(
        svgData,
        width: widget.width ?? 200,
        height: widget.height ?? 80,
        fit: BoxFit.contain,
      ),
    );
  }
}
