import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';

import '../../data/bank_items_model.dart';
import '../cubit/new_beneficiary_cubit.dart';

class BankNamesDropDown extends StatelessWidget {
  final Function(BankItemsModel bank) onChanged;
  final Function() onSearch;

  const BankNamesDropDown({
    super.key,
    required this.onChanged,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final cubit = context.watch<NewBeneficiaryCubit>();
    return AppDropdown<BankItemsModel>.drawer(
      showError: showError(cubit, theme),
      label: "Bank name",
      isSearchable: true,
      drawerListviewShrink: false,
      searchText: "Search placeholder",
      onSearch: (value) {
        onSearch;
        // setState(() {});
      },
      items: (searchValue) {
        print("searchValue ${searchValue}");
        return BankItemsModel.itemsModels
            .where((element) => element.bankName
                .toLowerCase()
                .contains(searchValue.toLowerCase()))
            .map((e) => DropdownItem(
                  leading: AppIcon(
                    icon: e.bankLogo,
                  ),
                  value: e,
                  label: e.bankName,
                ))
            .toList()
            .toList();
      },
      onChange: (value, index) {
        onChanged(value);
        print(value.bankName);
      },
    );
  }
}

bool showError(NewBeneficiaryCubit cubit, AppThemeData theme) {
  if (cubit.enabled) {
    return cubit.isBankValid ? false : true;
  }
  return false;
}
