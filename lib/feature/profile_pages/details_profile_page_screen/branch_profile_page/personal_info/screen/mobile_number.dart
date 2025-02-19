import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/conterl/countr_provider.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/country_dropdown_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bond_form/bond_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumber extends ConsumerStatefulWidget {
  const MobileNumber({super.key});

  @override
  ConsumerState<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends ConsumerState<MobileNumber> {
  TextEditingController _mobileNumberController = TextEditingController(
    text: '777222189',
  );
  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(CountrProviders);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Mobile Number", style: Theme.of(context).textTheme.labelSmall),
        Row(
          children: [
            CountryDropdownPro(),
            Flexible(
              flex: 1,
              child: TextFormField(
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
                controller: _mobileNumberController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          formState.error('MobileNumber') != null
                              ? Theme.of(context).colorScheme.onTertiary
                              : Colors.transparent,
                    ),
                  ),
                  error:
                      formState.error('MobileNumber') != null
                          ? Row(
                            children: [
                              Text(
                                formState.error('MobileNumber') ?? "",
                                style: Theme.of(
                                  context,
                                ).textTheme.labelSmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onError,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.error_outline_sharp,
                                color: Theme.of(context).colorScheme.onError,
                              ),
                            ],
                          )
                          : null,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide:
                        _mobileNumberController!.text.isEmpty
                            ? BorderSide(color: Colors.transparent)
                            : BorderSide(
                              color: Theme.of(context).colorScheme.onTertiary,
                            ),
                  ),
                ),
                onChanged: (value) {
                  ref.read(CountrProviders.notifier).clear();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
