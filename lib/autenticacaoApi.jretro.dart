// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autenticacaoApi.dart';

// **************************************************************************
// JaguarHttpGenerator
// **************************************************************************

abstract class _$AutenticacaoApiClient implements ApiClient {
  final String basePath = "";
  Future<WebService> getWs(String matricula) async {
    var req = base.get
        .path(basePath)
        .path("autenticacao/ws")
        .query("matricula", matricula);
    return req.one(convert: serializers.oneFrom);
  }

  Future<UsuarioAutenticado> postLogin(Usuario user) async {
    var req = base.post
        .path(basePath)
        .path("autenticacao/login")
        .json(serializers.to(user));
    return req.one(convert: serializers.oneFrom);
  }
}
