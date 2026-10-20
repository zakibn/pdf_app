import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/pdf_controller.dart';
import 'pdf_view_screen.dart';

class PdfListScreen extends GetView<PdfController> {
  const PdfListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PDF Library')),
      body: ListView.builder(
        itemCount: controller.pdfs.length,
        itemBuilder: (context, index) {
          final pdf = controller.pdfs[index];

          return ListTile(
            leading: const Icon(Icons.picture_as_pdf),
            title: Text(pdf.title),
            subtitle: Text(pdf.singer),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              controller.openPdf(pdf);
              Get.to(() => const PdfViewScreen());
            },
          );
        },
      ),
    );
  }
}
