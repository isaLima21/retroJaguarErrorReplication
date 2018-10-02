// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webservice.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$WebServiceSerializer implements Serializer<WebService> {
  @override
  Map<String, dynamic> toMap(WebService model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'wwws', model.wwws);
    setMapValue(ret, 'intranet', model.intranet);
    setMapValue(ret, 'discoVirtual', model.discoVirtual);
    return ret;
  }

  @override
  WebService fromMap(Map map) {
    if (map == null) return null;
    final obj = new WebService();
    obj.wwws = map['wwws'] as String;
    obj.intranet = map['intranet'] as String;
    obj.discoVirtual = map['discoVirtual'] as String;
    return obj;
  }
}
