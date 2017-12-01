import 'package:angular2/di.dart';
import 'package:user_environment/environment.dart';

@Injectable()
UserEnvironment injectableUserEnvironmentFactory(
  @Optional() @SkipSelf() UserEnvironment environment
) =>
  environment ?? UserEnvironmentFactory();

const Provider userEnvironmentProvider =
  const Provider(UserEnvironment, useFactory: injectableUserEnvironmentFactory);


const USER_ENVIRONMENT_PROVIDERS = const [
  userEnvironmentProvider
];
