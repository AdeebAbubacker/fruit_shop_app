import 'package:flutter/material.dart';
import 'package:fruit_shop_app/widgets/appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsnConditionScreen extends StatefulWidget {
  const TermsnConditionScreen({super.key});

  @override
  State<TermsnConditionScreen> createState() => _TermsnConditionScreenState();
}

class _TermsnConditionScreenState extends State<TermsnConditionScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    // #docregion webview_controller
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(
          Uri.parse('https://up-homes-72ygjg-61fd9.web.app/#/terms-conditions'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const HomeAppBar(),
            const SizedBox(height: 20),
            Expanded(
              child: WebViewWidget(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}
