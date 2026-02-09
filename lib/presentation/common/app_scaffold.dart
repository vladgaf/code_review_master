import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final bool showBackButton;

  const AppScaffold({
    super.key,
    required this.body,
    required this.title,
    this.actions,
    this.floatingActionButton,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: showBackButton
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              )
            : null,
        actions: actions,
      ),
      body: SafeArea(
        child: body,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
