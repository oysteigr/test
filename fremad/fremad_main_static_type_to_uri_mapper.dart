library fremad.web.fremad_main.generated_type_uris;

import 'package:angular/core_dom/type_to_uri_mapper.dart';
import 'package:fremad/fremad.dart' as import_0;

/// Used when URIs have been converted to be page-relative at build time.
class _StaticTypeToUriMapper implements TypeToUriMapper {
  Uri uriForType(Type type) {
    var uri = _uriMapping[type];
    if (uri == null) {
      throw new StateError('Unable to find URI mapping for $type');
    }
    return uri;
  }
}

final typeToUriMapper = new _StaticTypeToUriMapper();

final Map<Type, Uri> _uriMapping = <Type, Uri> {
  import_0.HeaderComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.MainMenuComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.FooterComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowTheClubComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowHomeComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowLogginComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowSponsorsComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowTeamComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowAdminComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.FrontArticleListComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.FrontArticleComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowTeamAboutComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowTeamPlayersComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowTeamFixtureComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowTeamTableComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowAdminArticlesComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowAdminPlayersComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowAdminMatchesComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
  import_0.ShowAdminTeamsComponent: Uri.parse(r'''package:fremad/fremad.dart'''),
};
