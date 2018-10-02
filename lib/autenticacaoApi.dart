import "dart:async";
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_resty/jaguar_resty.dart' as resty;
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'autenticacao/webservice.dart';
import 'autenticacao/usuarioAutenticado.dart';
import 'autenticacao/usuario.dart';
import 'package:http/http.dart';

part 'autenticacaoApi.jretro.dart';

@GenApiClient()
class AutenticacaoApi extends _$AutenticacaoApiClient implements ApiClient {
  final resty.Route base;
  final SerializerRepo serializers;

  AutenticacaoApi({this.base, this.serializers});

  @GetReq(path: "autenticacao/ws")
  Future<WebService> getWs(@QueryParam() String matricula);
}

final repo = JsonRepo()..add(WebServiceSerializer())..add(UsuarioSerializer())..add(UsuarioAutenticadoSerializer());

Future<bool> getWs(String matricula) async {
  globalClient = IOClient();

  var api = AutenticacaoApi(base: route('www.teste.com'), serializers: repo);

  try {
    WebService ws = await api.getWs(matricula);

    return ws.wwws.length > 10;
  } catch (e) {
    print('getWs: ' + e);
    return false;
  }
}
