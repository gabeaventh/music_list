brunner:
	@flutter pub run build_runner build --delete-conflicting-outputs

run:
	@flutter clean
	@flutter pub get
	@flutter run

itest:
	@flutter drive \
	--driver=test_driver/integration_test.dart \
	--target=integration_test/music_player_test.dart

btest:
	@flutter test