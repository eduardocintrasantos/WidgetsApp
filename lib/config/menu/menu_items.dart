import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subTitle, required this.link, required this.icon});
}

const appMenuItens = [
  MenuItem(
    title: 'Botões',
    subTitle: 'Exemplos de Botões',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Cartões',
    subTitle: 'Exemplos de Cartões',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Progressos',
    subTitle: 'Exemplos de Progressos',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),
];