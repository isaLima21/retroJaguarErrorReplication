// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarioAutenticado.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$UsuarioAutenticadoSerializer
    implements Serializer<UsuarioAutenticado> {
  @override
  Map<String, dynamic> toMap(UsuarioAutenticado model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'chave', model.chave);
    setMapValue(ret, 'perfil', model.perfil);
    setMapValue(ret, 'mensagem', model.mensagem);
    setMapValue(ret, 'senhaExpirar', model.senhaExpirar);
    setMapValue(ret, 'sistema', model.sistema);
    return ret;
  }

  @override
  UsuarioAutenticado fromMap(Map map) {
    if (map == null) return null;
    final obj = new UsuarioAutenticado();
    obj.chave = map['chave'] as String;
    obj.perfil = map['perfil'] as String;
    obj.mensagem = map['mensagem'] as String;
    obj.senhaExpirar = map['senhaExpirar'] as String;
    obj.sistema = map['sistema'] as String;
    return obj;
  }
}
