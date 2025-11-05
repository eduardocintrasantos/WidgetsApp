import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ui Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({super.key});

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}


enum Transportation {car, plane, boat, submarine}

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Developer Mode'), 
          subtitle: Text('Controles adicionais'), 
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          })
        ),


        ExpansionTile(
          title: Text('Veiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: Text('Carro'),
              subtitle: Text('Viajar de carro.'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: Text('Barco'),
              subtitle: Text('Viajar de barco.'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: Text('Avião'),
              subtitle: Text('Viajar de avião.'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: Text('Submarino'),
              subtitle: Text('Viajar de submarino.'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            )
          ],
        ),
      
        CheckboxListTile(
          title: Text('Café da manha'),
          subtitle: Text('Inclui café da manha.'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: Text('Almoço'),
          subtitle: Text('Inclui almoço.'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: Text('Jantar'),
          subtitle: Text('Inclui jantar.'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
