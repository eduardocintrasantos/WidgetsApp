import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/config/theme/theme_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(selectedColorProvider);
    final isDarkmode = ref.watch(isDarkmodeProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme:
          AppTheme(
            selectedColor: selectedColor,
            isDarkmode: isDarkmode,
          ).getTheme(),
    );
  }
}
