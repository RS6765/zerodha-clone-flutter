import '../../file_provider.dart';

ThemeData themeData =
    ThemeData(colorScheme: colorScheme, iconButtonTheme: iconButtonThemeData);

ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: primary);

IconButtonThemeData iconButtonThemeData = const IconButtonThemeData(
    style: ButtonStyle(iconColor: MaterialStatePropertyAll(primary)));
