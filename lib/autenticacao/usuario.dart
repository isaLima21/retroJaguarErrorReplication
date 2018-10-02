import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'usuario.jser.dart';

class Usuario {
  String login;
  String senha;

  Usuario({this.login, this.senha});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = UsuarioSerializer();

  static Usuario fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();
}

@GenSerializer()
class UsuarioSerializer extends Serializer<Usuario> with _$UsuarioSerializer {}
