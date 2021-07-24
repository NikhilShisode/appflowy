import 'package:flowy_sdk/protobuf/flowy-editor/doc_create.pb.dart';
import 'package:dartz/dartz.dart';
import 'package:flowy_sdk/protobuf/flowy-editor/errors.pb.dart';

abstract class IDoc {
  Future<Either<Doc, EditorError>> readDoc();
  Future<Either<Unit, EditorError>> updateDoc(
      {String? name, String? desc, String? text});
  Future<Either<Unit, EditorError>> closeDoc();
}
