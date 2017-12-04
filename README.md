[![travis build](https://travis-ci.org/wrike/user-environment-angular.dart.svg?branch=master)](https://travis-ci.org/wrike/user-environment-angular.dart)
## User Environment
This package allows to detect the platform and the browser version used to view a web page.

Differentiated browsers are: `IE`, `Edge`, `Chrome`, `Safari`, `Gecko`, `Opera`, `Electron`, `Other` along with `Mac`, `Windows` and `Other` platforms.

### Usage
```dart
import 'package:angular2/angular2.dart';
import 'package:user_environment_angular/user_environment.dart';

@Directive(
  selector: 'my-directive',
  providers: const [
  USER_ENVIRONMENT_PROVIDERS
  ]
)
class MyDirective {

  MyDirective(UserEnvironment env) {
  if (env.platform.type == UserPlatformType.Mac &&
    env.browser.type == BrowserType.Chrome &&
    env.browser.productVersion('AppleWebkit') == new BrowserVersion('1.2.3')) {
      // Do something
    }
  }
}
```
