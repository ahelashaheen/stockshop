// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/cart.dart';
import '../../../../core/utils/components/route_logo.dart';
import '../../../../core/utils/components/search_bar.dart';
import '../../../../core/utils/components/space.dart';
import '../../data/data_sources/remote/home_remote_ds_impl.dart';
import '../../data/repositories/home_repo_impl.dart';
import '../../domain/use_cases/get_brands_usecase.dart';
import '../../domain/use_cases/get_categories_usecase.dart';
import '../../domain/use_cases/get_offers_usecase.dart';
import '../bloc/home_bloc.dart';
import '../widgets/grid_view.dart';
import '../widgets/list_view.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  var searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
          GetBrandsUseCase(
            HomeRepoImpl(
              HomeRemoteDSImpl(
                ApiManager(),
              ),
            ),
          ),
          GetCategoriesUseCase(
            HomeRepoImpl(
              HomeRemoteDSImpl(ApiManager()),
            ),
          ),
          GetOffersUseCase(HomeRepoImpl(HomeRemoteDSImpl(ApiManager()))))
        ..add(GetCategoriesEvent())
        ..add(GetBrandsEvent())
      //..add(GetOffersEvent())
      ,
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RouteLoge(),
                    const VerticalSpace(18),
                    Row(
                      children: [
                        SearchBarField(
                          hint: AppStrings.searchHint,
                          controller: searchBarController,
                          onChange: () {},
                          onPressed: () {},
                        ),
                        const HorizontalSpace(24),
                        const Cart(),
                        const HorizontalSpace(17),
                      ],
                    ),
                    const VerticalSpace(16),
                    // CarouselSliderR(state.offers ?? []),
                    const VerticalSpace(24),
                    Padding(
                      padding: REdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.category,
                            style: AppStyles.blueLableStyle,
                          ),
                          Text(
                            AppStrings.view,
                            style: AppStyles.smallLableStyle,
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpace(16),
                    GridViewW(state.categories ?? []),
                    const VerticalSpace(24),
                    Text(AppStrings.appliance, style: AppStyles.blueLableStyle),
                    const VerticalSpace(16),
                    ListViewW(brands: state.brands ?? []),
                    const VerticalSpace(10),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
