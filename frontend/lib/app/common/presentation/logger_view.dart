import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:pubstream/app/common/services/logger_service.dart';

class LoggerView extends ConsumerWidget {
  const LoggerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.watch(loggerServiceProvider);
    return TalkerScreen(
      talker: logger,
      itemsBuilder: (context, data) {
        return TalkerDataCard(
          data: data,
          color: {
            LogLevel.critical: Colors.red,
            LogLevel.error: Colors.redAccent,
            LogLevel.info: Colors.cyan,
            LogLevel.warning: Colors.yellow,
            LogLevel.debug: Colors.blue,
            LogLevel.verbose: Colors.grey,
          }[data.logLevel]!,
        );
      },
      appBarTitle: 'Logs',
    );
  }
}
