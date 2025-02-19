import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_docement_page/documents_page/contorl/file_form_controller.dart';
import 'package:bond_form/bond_form.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentType extends ConsumerStatefulWidget {
  const DocumentType({super.key});
  @override
  ConsumerState<DocumentType> createState() => _DocumentTypeState();
}

class _DocumentTypeState extends ConsumerState<DocumentType> {
  DocumentType? selectedDocumentTypes;

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(fileFormProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Document Type", style: Theme.of(context).textTheme.labelSmall),
        8.verticalSpace,
        Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<DocumentTypes>(
              iconStyleData: IconStyleData(
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                iconEnabledColor: Theme.of(context).colorScheme.onTertiary,
              ),
              isExpanded: true,
              hint: Padding(
                padding: const EdgeInsetsDirectional.all(8),
                child: Text(
                  'choose document type',
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
              ),
              items:
                  DocumentTypes.values.map((docType) {
                    return DropdownMenuItem<DocumentTypes>(
                      value: docType,
                      child: Text(
                        docType.toString().split('.').last,
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  }).toList(),
              value:
                  formState
                      .get<DropDownFieldState<DocumentTypes?>, DocumentTypes?>(
                        'documentType',
                      )
                      .value,
              onChanged: (DocumentTypes? value) {
                print(value);

                ref
                    .read(fileFormProvider.notifier)
                    .update<DropDownFieldState<DocumentTypes?>, DocumentTypes?>(
                      'documentType',
                      value as DocumentTypes,
                    );
              },
              dropdownStyleData: DropdownStyleData(
                elevation: 0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                ),
              ),
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsetsDirectional.all(4),
                width: 2.sw,
                decoration: BoxDecoration(
                  border:
                      selectedDocumentTypes != null
                          ? Border.all(
                            color: Theme.of(context).colorScheme.tertiary,
                          )
                          : Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(4),
                  shape: BoxShape.rectangle,
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                ),
              ),
              menuItemStyleData: MenuItemStyleData(height: .05.sh),
            ),
          ),
        ),
      ],
    );
  }
}
