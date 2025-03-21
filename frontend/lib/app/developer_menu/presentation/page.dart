import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pubstream/app/common/presentation/logger_view.dart';

class DeveloperMenuPage extends ConsumerWidget {
  const DeveloperMenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Developer Menu',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: PageView(
        children: const [
          LoggerView(),
        ],
      ),
    );
  }
}
