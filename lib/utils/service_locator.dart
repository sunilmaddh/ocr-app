import 'package:get_it/get_it.dart';
import 'package:ocr_app/utils/navigator_service.dart';

final locator = GetIt.instance;
void setupLocator() {
  locator.registerSingleton(NavigatorService());
}
