import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/theme_provider.dart';

class ThemeChanger extends ConsumerWidget {
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer'),
        actions: [
          IconButton(
            icon:
                isDarkmode
                    ? Icon(Icons.dark_mode_outlined)
                    : Icon(Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            },
          ),
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text('Cor', style: TextStyle(color: color)),
          subtitle: Text('#${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref
                .read(selectedColorProvider.notifier)
                .update((state) => state = index);
          },
        );
      },
    );
  }
}
