import 'package:first/app/features/restaurant/services/MenuGroupsService.dart';
import 'package:first/app/features/restaurant/components/menu_group/MenuGroupCenterView.dart';
import 'package:first/app/features/restaurant/components/menu_groups/ManuGroupsAppBarWidget.dart';
import 'package:first/app/features/restaurant/components/menu_groups/MenuGroupsListView.dart';
import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/features/restaurant/domain/MenuGroups.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/selectors/getMenuGroupsSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MenuGroupsPage extends StatelessWidget {
  const MenuGroupsPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: ManuGroupsAppBarWidget(),
            ),

      body: StoreConnector<AppState, bool>(
        converter: (store) => store.state.isLoading,
        builder: (context, isLoading) {
          return isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const MenuGroupsListView();
        },
      ),
    );
  }
}
