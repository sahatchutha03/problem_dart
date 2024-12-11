void main() {
  // ข้อมูลรายชื่อนักเรียนและเกรดในรูปแบบ List ของ Map
  List<Map<String, dynamic>> students = [
    {'name': 'John', 'grade': 'A'},
    {'name': 'Alice', 'grade': 'B'},
    {'name': 'Bob', 'grade': 'A'},
    {'name': 'Jane', 'grade': 'C'},
    {'name': 'Candy', 'grade': 'B'},
  ];
  Map<String, List<String>> groupedByGrade = groupStudentsByGrade(students);
  
  groupedByGrade.forEach((grade, studentsList) {
    print('เกรด $grade: ${studentsList.join(', ')}');
  });
}
Map<String, List<String>> groupStudentsByGrade(List<Map<String, dynamic>> students) {
  Map<String, List<String>> gradeGroups = {};

  
  for (var student in students) {
    String grade = student['grade'];
    String name = student['name'];

    if (!gradeGroups.containsKey(grade)) {
      gradeGroups[grade] = [];
    }
    gradeGroups[grade]?.add(name);
  }

  return gradeGroups;
}