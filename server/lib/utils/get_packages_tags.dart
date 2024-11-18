List<String> getPackageTags(Map<String, dynamic> pubspec) {
  if (pubspec['flutter'] != null) {
    return ['flutter'];
  } else {
    return ['flutter', 'web', 'other'];
  }
}
