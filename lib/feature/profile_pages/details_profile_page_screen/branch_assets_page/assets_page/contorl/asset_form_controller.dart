import 'package:bond_form/bond_form.dart';
import 'package:bond_form/src/form_fields/form_field_state.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AssetTypes { Mouses, Laptops, screens, headephones }

class AssetFormController extends AutoDisposeFormStateNotifier<bool, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'SerialNumber': TextFieldState(null, label: "", rules: [Rules.required()]),
    'NotesComments': TextFieldState(null, label: "", rules: [Rules.required()]),
    'AssetType': DropDownFieldState<AssetTypes?>(
      null,
      label: "",
      items:
          AssetTypes.values
              .map(
                (docType) => DropDownItemState<AssetTypes>(
                  docType,
                  label: docType.toString().split('.').last,
                ),
              )
              .toList(),
      rules: [Rules.required(), Rules.inList(AssetTypes.values)],
    ),
  };

  @override
  Future<bool> onSubmit() async {
    final serialNumber = state.get('SerialNumber').value;
    final AssetType = state.get('AssetType').value;
    final NotesComments = state.get('NotesComments').value;
    if (serialNumber == null) {
      ref
          .read(assetFormProvider.notifier)
          .setError('SerialNumber', "this field required");
      throw Error();
    }
    if (AssetType == null) {
      ref
          .read(assetFormProvider.notifier)
          .setError('AssetType', "this field required");
      throw Error();
    }
    if (NotesComments == null) {
      ref
          .read(assetFormProvider.notifier)
          .setError('NotesComments', "this field required");
      throw Error();
    }
    return true;
  }
}

final assetFormProvider = NotifierProvider.autoDispose<
  AssetFormController,
  BondFormState<bool, Error>
>(AssetFormController.new);
