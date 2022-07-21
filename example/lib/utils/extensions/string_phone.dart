extension StringPhoneExtensions on String {
  String formatKgPhone() {
    return '${substring(0, 4)} (${substring(4, 7)}) '
        '${substring(7, 10)} - ${substring(10, 13)}';
  }
}
