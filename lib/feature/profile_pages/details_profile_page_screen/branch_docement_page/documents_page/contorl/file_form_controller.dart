import 'package:bond_form/bond_form.dart';
import 'package:bond_form/src/form_fields/form_field_state.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DocumentTypes { Absent, Arjeen, Assets, Mops }

class FileFormController extends AutoDisposeFormStateNotifier<bool, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'documentName': TextFieldState(null, label: "", rules: [Rules.required()]),
    'documentType': DropDownFieldState<DocumentTypes?>(
      null,
      label: "",
      items:
          DocumentTypes.values
              .map(
                (docType) => DropDownItemState<DocumentTypes>(
                  docType,
                  label: docType.toString().split('.').last,
                ),
              )
              .toList(),
      rules: [Rules.required(), Rules.inList(DocumentTypes.values)],
    ),
  };

  @override
  Future<bool> onSubmit() async {
    final documentName = state.get('documentName').value;
    final DocumentType = state.get('documentType').value;
    if (documentName == null) {
      ref
          .read(fileFormProvider.notifier)
          .setError('documentName', "this field required");
      throw Error();
    }
    if (DocumentType == null) {
      ref
          .read(fileFormProvider.notifier)
          .setError('documentType', "this field required");
      throw Error();
    }
    return true;
  }
}

final fileFormProvider = NotifierProvider.autoDispose<
  FileFormController,
  BondFormState<bool, Error>
>(FileFormController.new);
