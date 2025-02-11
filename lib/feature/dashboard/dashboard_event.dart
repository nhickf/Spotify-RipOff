sealed class DashboardEvent {}

final class Initial extends DashboardEvent {}
final class Refresh extends DashboardEvent {}


final class OnCategorySelected extends DashboardEvent {
  final String categoryId;

  OnCategorySelected({required this.categoryId});
}


