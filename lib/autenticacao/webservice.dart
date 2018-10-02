import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'webservice.jser.dart';

class WebService {
  String wwws;
  String intranet;
  String discoVirtual;

  WebService({this.wwws, this.intranet, this.discoVirtual});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  static final serializer = WebServiceSerializer();

  static WebService fromMap(Map map) => serializer.fromMap(map);

  String toString() => toJson().toString();
}

@GenSerializer()
class WebServiceSerializer extends Serializer<WebService>
    with _$WebServiceSerializer {}
