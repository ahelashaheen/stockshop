import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/components/cart.dart';
import '../../../../core/utils/components/route_logo.dart';
import '../../../../core/utils/components/search_bar.dart';
import '../../../../core/utils/components/space.dart';
import '../cubit/category_tab_cubit.dart';
import '../widgets/grid_view.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CategoryTabCubit(),
      child: BlocConsumer<CategoryTabCubit, CategoryTabState>(
        listener: (context, state) {},
        builder: (BuildContext context, state) {
          final bloc = CategoryTabCubit.get(context);
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RouteLoge(),
                  const VerticalSpace(18),
                  Row(
                    children: [
                      SearchBarField(
                        hint: AppStrings.searchHint,
                        controller: bloc.searchBarController,
                        onChange: () {},
                        onPressed: () {},
                      ),
                      const HorizontalSpace(24),
                      const Cart(),
                    ],
                  ),
                  const VerticalSpace(32),
                  const GridViewWW(),
                  const VerticalSpace(6),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
