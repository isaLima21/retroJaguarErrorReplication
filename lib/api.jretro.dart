// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JaguarHttpGenerator
// **************************************************************************

abstract class _$MyApiClient implements ApiClient {
  final String basePath = "";
  Future<void> getAll(String hello) async {
    var req = base.get.path(basePath).query("hello", hello);
    await req.go();
  }
}
