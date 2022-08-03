// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:trapir/screens/projects/new_project.dart';

void main() {
  test('Test email is valid', () {
    String email = 'test@gmail.com';
    String email2 = 'test\$\$#%@gmail';
    expect(email.isValidEmail, isTrue);
    expect(email2.isValidEmail, isFalse);
  });

  test('Test validation for project names', () {
    String projectName = 'Project Name';
    String projectName2 = 'Project Name2';
    String projectName3 = 'Project Name!?*';
    expect(projectName.isValidProjectName, isTrue);
    expect(projectName2.isValidProjectName, isTrue);
    expect(projectName3.isValidProjectName, isFalse);
  });
}
