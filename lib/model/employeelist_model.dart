class EmployeeModel{
  final int id;
  final String name;
  final int taskassigned;
  final int taskcompleted;

  EmployeeModel
      (
      {
        required this.id,
        required this.name,
        required this.taskassigned,
        required this.taskcompleted
});

  // @override
  // bool operator ==(Object other){
  //   if(identical(this, other)) return true;
  //   return other is EmployeeModel && other.id== id;
  // }
}

