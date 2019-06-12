import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:my_flutter_app/main.dart';

void main() {
  testWidgets('Smoke test Main Page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(MyApp());

      expect(find.byKey(Key('GreeterState-text')), findsOneWidget);
      var text = find.byKey(Key('GreeterState-text')).evaluate().single.widget as Text;
      expect(text.data, 'Hello from State');
      await tester.tap(find.byKey(Key('GreeterState-Gesture')));
      await tester.pump();
      var tappedText = find.byKey(Key('GreeterState-text')).evaluate().single.widget as Text;
      expect(tappedText.data, 'Hello from GreeterState');

      // Global state counter at bottom
      var globalStateMainCounter = find.byKey(Key('main-global-state'));
      expect(globalStateMainCounter, findsOneWidget);
    });
  });
}
