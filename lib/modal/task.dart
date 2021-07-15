
class Task {

  String title;
  bool isChecked;

  Task({this.title = "", this.isChecked = false});

  void isCheckedToggle() {
    isChecked = !isChecked;
  }

}