import 'dart:async';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';

part 'api.jretro.dart';

@GenApiClient()
class MyApi extends ApiClient with _$MyApiClient {
  Route base;
  SerializerRepo serializers;

  MyApi();

  @GetReq()
  Future<void> getAll(@QueryParam() String hello);
}