import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';

import '../data/datasource/static/pdf_data.dart';
import '../data/model/model_pdf.dart';

class PdfController extends GetxController {
  final List<ModelPdf> pdfs = pdfData;

  PdfControllerPinch? pdfControllerPinch;

  void openPdf(ModelPdf pdf) {
    pdfControllerPinch?.dispose();

    pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openAsset(pdf.url),
    );
  }

  @override
  void onClose() {
    pdfControllerPinch?.dispose();
    super.onClose();
  }
}
