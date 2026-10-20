import 'package:get/get.dart';

import 'Binding/initialbindings.dart';
import 'core/Constant/app_routes.dart';
import 'view/screen/pdf_list_screen.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.pdfList,
      page: () => const PdfListScreen(),
      binding: InitialBindings(),
    ),
  ];
}
