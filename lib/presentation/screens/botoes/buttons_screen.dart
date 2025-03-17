import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Botões'),
      ),
      body: _BottonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){context.pop();},
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _BottonsView extends StatelessWidget {
  const _BottonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
            ElevatedButton(onPressed: null, child: const Text('Elevated Desbled')),
            ElevatedButton.icon(onPressed: (){}, 
            icon: const Icon(Icons.access_alarm_rounded),
            label: const Text('Elevated Icon')),

            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.accessibility_new),
              label: Text('Filled Icon'),),

            OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.terminal),
              label: Text('Outlined Icon')),

            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(onPressed: (){}, 
            icon: Icon(Icons.account_box_outlined),
            label: Text('Text Icon'),)
          ],
        ),  
      ),
    );
  }
}