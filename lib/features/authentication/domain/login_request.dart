import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
class AuthenticationRequest with _$AuthenticationRequest {
  const factory AuthenticationRequest({
    required String username,
    required String email,
    required String password,
  }) = _LoginRequest;

  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) => _$AuthenticationRequestFromJson(json);
}
