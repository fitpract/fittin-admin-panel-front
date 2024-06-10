part of 'catalog_bloc.dart';

@immutable
abstract class CatalogEvent {}

class AddNewCatalogEvent extends CatalogEvent {}

class SortCatalogEvent extends CatalogEvent{}
