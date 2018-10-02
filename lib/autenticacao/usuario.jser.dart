// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$UsuarioSerializer implements Serializer<Usuario> {
  @override
  Map<String, dynamic> toMap(Usuario model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'login', model.login);
    setMapValue(ret, 'senha', model.senha);
    return ret;
  }

  @override
  Usuario fromMap(Map map) {
    if (map == null) return null;
    final obj = new Usuario();
    obj.login = map['login'] as String;
    obj.senha = map['senha'] as String;
    return obj;
  }
}
