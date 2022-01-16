brunner:
	@flutter pub run build_runner build --delete-conflicting-outputs

run:
	@flutter clean
	@flutter pub get
	@flutter run