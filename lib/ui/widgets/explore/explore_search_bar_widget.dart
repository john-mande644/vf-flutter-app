import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vf_user_flutter_new/constants/dimens.dart';
import 'package:vf_user_flutter_new/ui/explore/explore_viewmodel.dart';

import '../../../locator.dart';

class ExploreSearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExploreViewModel>.nonReactive(
      builder: (context, model, child) => Container(
        margin: EdgeInsets.only(bottom: AppDimens.spacing),
        child: TextField(
          controller: model.searchFieldController,
          onChanged: (value) {
            model.searchMerchants(value);
          },
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Theme.of(context).accentColor,
            ),
            filled: true,
            fillColor: Theme.of(context).cardColor,
            hintText: 'Search by restaurant',
            hintStyle: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: AppDimens.fontM),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.radiusM),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: AppDimens.fontM),
        ),

        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Container(
        //       width: MediaQuery.of(context).size.width * 0.75,
        //       child: ,
        //     ),
        //     // GestureDetector(
        //     //   onTap: () {},
        //     //   child: Container(
        //     //     width: AppDimens.flBtnWidth,
        //     //     height: AppDimens.flBtnHeight,
        //     //     child: Icon(
        //     //       Icons.filter_list_outlined,
        //     //       color: Theme.of(context).accentColor,
        //     //     ),
        //     //     decoration: BoxDecoration(
        //     //       color: Theme.of(context).cardColor,
        //     //       borderRadius: BorderRadius.circular(
        //     //         AppDimens.radiusM,
        //     //       ),
        //     //     ),
        //     //   ),
        //     // ),
        //   ],
        // ),
      ),
      viewModelBuilder: () => locator<ExploreViewModel>(),
      disposeViewModel: false,
    );
  }
}
