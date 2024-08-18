part of 'task_cubit.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class AddTaskSuccefully extends TaskState {}

final class AddTaskFailed extends TaskState {}

final class LoadingAddTask extends TaskState {}

final class LoadingAllTask extends TaskState {}

final class SuccessFullyLoadTask extends TaskState {}

final class FailedLoadingTask extends TaskState {}

final class SuccefullyUpdateTask extends TaskState {}

final class FailedUpdateTask extends TaskState {}
