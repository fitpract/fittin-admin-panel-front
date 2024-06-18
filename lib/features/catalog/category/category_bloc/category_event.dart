part of 'category_bloc.dart';

@immutable
abstract class CatalogEvent {}

class AddNewCatalogEvent extends CatalogEvent {}

class SortCatalogEvent extends CatalogEvent{}

class LoadCatalogEvent extends CatalogEvent{}

