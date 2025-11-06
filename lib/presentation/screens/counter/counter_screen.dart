import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/theme_provider.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterValue = ref.watch(counterProvider);
    final isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valor: ${counterValue}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
      ),
    );
  }
}
