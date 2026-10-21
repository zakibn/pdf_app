import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/pdf_controller.dart';
import '../widget/custom_list_view.dart';

class PdfListScreen extends GetView<PdfController> {
  const PdfListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F7F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F7F8),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'List PDF',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ),
      body: const CustomListView(),
    );
  }
}
