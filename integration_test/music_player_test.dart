import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:music_player/main.dart' as player;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;

  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  group("end-to-end test for Music Player", () {
    testWidgets(
        'should display the correct view, by looking for search bar text',
        (WidgetTester tester) async {
      player.main();
      await tester.pumpAndSettle(Duration(seconds: 1));

      expect(find.text('Search by Artist'), findsOneWidget);
    });

    testWidgets('should display list of songs, by typing for artist name',
        (WidgetTester tester) async {
      player.main();
      await tester.pumpAndSettle(Duration(seconds: 1));
      final Finder searchBar =
          find.widgetWithText(TextField, 'Search by Artist');
      expect(searchBar, findsOneWidget);

      await tester.enterText(searchBar, 'twice');
      await tester.pumpAndSettle(Duration(seconds: 1));

      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle(Duration(seconds: 5));

      expect(find.text('twice'), findsOneWidget);
    });
  });
}
