import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/movie_app.dart';
import 'package:movie_app/pages/home_page.dart';

void main() {
  group('MovieApp', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(const MovieApp());
      await tester.pumpAndSettle();
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
