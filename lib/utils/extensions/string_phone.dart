extension StringPhoneExtensions on String {
  String formatKgPhone() {
    return '${this.substring(0, 4)} (${this.substring(4, 7)}) '
        '${this.substring(7, 10)} - ${this.substring(10, 13)}';
  }
}
