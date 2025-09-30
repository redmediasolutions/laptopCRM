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

import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
// ignore: deprecated_member_use
import 'dart:html' as html;

class ScreenshotContainer extends StatefulWidget {
  const ScreenshotContainer({
    super.key,
    this.width,
    this.height,
    this.contentToCapture,
  });

  final double? width;
  final double? height;
  final Widget Function()? contentToCapture;

  @override
  State<ScreenshotContainer> createState() => _ScreenshotContainerState();
}

class _ScreenshotContainerState extends State<ScreenshotContainer> {
  final GlobalKey _repaintKey = GlobalKey();

  Future<void> _captureAndGeneratePdf() async {
    try {
      await Future.delayed(const Duration(milliseconds: 100)); // Ensure render

      final context = _repaintKey.currentContext;
      if (context == null) {
        debugPrint('No context found. Widget may not be mounted yet.');
        return;
      }

      final boundary = context.findRenderObject();
      if (boundary is! RenderRepaintBoundary) {
        debugPrint('Render object is not a RepaintBoundary');
        return;
      }

      final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      final Uint8List imageBytes = byteData!.buffer.asUint8List();

      await generatePDFFromScreenshot(imageBytes);
    } catch (e) {
      debugPrint('Screenshot failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepaintBoundary(
          key: _repaintKey,
          child: widget.contentToCapture?.call() ?? const SizedBox(),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _captureAndGeneratePdf,
          child: const Text('Print to PDF'),
        ),
      ],
    );
  }
}

Future<void> generatePDFFromScreenshot(Uint8List imageBytes) async {
  final pdf = pw.Document();
  final image = pw.MemoryImage(imageBytes);

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Center(child: pw.Image(image));
      },
    ),
  );

  final Uint8List pdfBytes = await pdf.save();

  final blob = html.Blob([pdfBytes]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", "screenshot.pdf")
    ..click();
  html.Url.revokeObjectUrl(url);

  debugPrint('PDF download triggered!');
}
