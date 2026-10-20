import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart' hide PdfController;

import '../../controller/pdf_controller.dart';

class PdfViewScreen extends GetView<PdfController> {
  const PdfViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pdfController = controller.pdfControllerPinch;

    if (pdfController == null) {
      return const Scaffold(body: Center(child: Text('No PDF selected')));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('PDF Viewer')),
      body: PdfViewPinch(controller: pdfController),
    );
  }
}
