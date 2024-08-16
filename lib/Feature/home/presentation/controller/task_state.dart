part of 'task_cubit.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class AddTaskSuccefully extends TaskState {}

final class AddTaskFailed extends TaskState {}

final class LoadingAddTask extends TaskState {}
