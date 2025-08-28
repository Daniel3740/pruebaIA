import 'package:flutter_test/flutter_test.dart';
import 'package:login/main.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('LoginPage muestra campos y botones', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Usuario'), findsOneWidget);
    expect(find.text('Contraseña'), findsOneWidget);
    // Buscar el botón de login por tipo y texto
    expect(
      find.widgetWithText(ElevatedButton, 'Login'),
      findsOneWidget,
    );
    expect(find.text('Google'), findsOneWidget);
    expect(find.text('Facebook'), findsOneWidget);
  });
}
