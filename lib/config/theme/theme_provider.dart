import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// modo dark
final isDarkmodeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);

// cor do tema
final colorListProvider = Provider((ref) => colorList);
