import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' show IconData;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItens = <MenuItem>[
  MenuItem(
    title: 'Botoes',
    subTitle: 'Exemplos de botões',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cartões',
    subTitle: 'Exemplos de cartões',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Exemplos de progressos',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'SnackBars',
    subTitle: 'Exemplos de SnackBars',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Exemplos de Animações',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
];
