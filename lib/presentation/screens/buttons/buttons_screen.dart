import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          context.pop();
        }
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override

  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Elevated')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
      
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Eleveted icon')
            ),

            FilledButton(onPressed: (){}, child: Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.accessibility_new),
              label: Text('Filled Icon')
            ),

            OutlinedButton(onPressed: (){}, child: Text('Outline')),
            OutlinedButton.icon(onPressed: (){}, 
              icon: Icon(Icons.abc_outlined),
              label: Text('Outline Icon')
            ),

            TextButton(onPressed: (){}, child: Text('Text')),
            TextButton.icon(
              onPressed: (){},
              icon: Icon(Icons.account_balance_wallet_rounded), 
              label: Text('Text Icon')
            ),

            CustomButton(),

            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                 backgroundColor: WidgetStateProperty.all(colors.primary),
                iconColor: WidgetStateProperty.all(Colors.white)
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Ola mundo',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ),
        ),
      ),
    );
  }
}