import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return ListView.separated(
      itemCount : appMenuItens.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItens[index];

        return _CustomListTitle(menuItem: menuItem);
      }, separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: colors.primary,
            thickness: 2,
          ); },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: IconButton(onPressed: (){
        /*Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ButtonsScreen())
        );*/
        context.push(menuItem.link);
      }, icon: Icon(Icons.arrow_forward), color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
    );
  }
}