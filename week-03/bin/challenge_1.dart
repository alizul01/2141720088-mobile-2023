enum Status { mahasiswa, pekerja }

extension StatusExtension on Status {
  String getCondition() {
    return this == Status.mahasiswa ? 'Masih Mahasiswa' : 'Sudah bekerja';
  }
}

void main() {
  var stats = Status.mahasiswa;
  print(stats.getCondition());
}
