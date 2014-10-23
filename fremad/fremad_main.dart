library fremad_main;

import 'package:angular/application_factory_static.dart';
import 'package:di/di.dart';
import 'package:logging/logging.dart';
import 'package:fremad/fremad.dart';
import 'fremad_main_generated_type_factory_maps.dart' show setStaticReflectorAsDefault;
import 'fremad_main_static_expressions.dart' as generated_static_expressions;
import 'fremad_main_static_metadata.dart' as generated_static_metadata;
import 'fremad_main_static_type_to_uri_mapper.dart' as generated_static_type_to_uri_mapper;

main(){
  setStaticReflectorAsDefault();
  Logger.root.level = Level.FINEST;
  Logger.root.onRecord.listen((LogRecord r) { print(r.message); });

  final inj = staticApplicationFactory(generated_static_metadata.typeAnnotations, generated_static_expressions.getters, generated_static_expressions.setters, generated_static_expressions.symbols, generated_static_type_to_uri_mapper.typeToUriMapper).addModule(new FremadApp()).run();
  GlobalHttpInterceptors.setUp(inj);
}
/*
class MyAppModule extends Module {
  MyAppModule() {
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
    bind(RouteInitializerFn, toImplementation: Routes);
    
  }
}

void main() {
  applicationFactory()
    .addModule(new MyAppModule())
    .run();
}

@Injectable()
class Routes 
{
  void call(Router router, RouteViewFactory views) {
    views.configure({
      'home': ngRoute(
          path: '/home',
          defaultRoute: true,
          view: 'views/home.html'),
      'theClub': ngRoute(
          path: '/theClub',
          view: 'views/theClub.html'),
      'team': ngRoute(
          path: '/team', 
          view: 'views/team.html'),
      'sponsors': ngRoute(
          path: '/sponsors', 
          view: 'views/sponsors.html'),
      'loggIn': ngRoute(
          path: '/loggIn', 
          view: 'views/loggIn.html')
    });
  }
}*/