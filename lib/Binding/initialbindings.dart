import 'package:get/get.dart';

import '../controller/pdf_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PdfController>(() => PdfController(), fenix: true);
  }
}
