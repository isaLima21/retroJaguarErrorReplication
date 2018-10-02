import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'usuarioAutenticado.jser.dart';

class UsuarioAutenticado {
  String chave;
  String perfil;
  String mensagem;
  String senhaExpirar;
  String sistema;

  @Ignore()
  String matricula;

  UsuarioAutenticado({this.chave, this.perfil, this.mensagem, this.senhaExpirar, this.matricula, this.sistema});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = UsuarioAutenticadoSerializer();

  static UsuarioAutenticado fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();
}

@GenSerializer()
class UsuarioAutenticadoSerializer extends Serializer<UsuarioAutenticado> with _$UsuarioAutenticadoSerializer {}
