// Fetch students query
const String fetchStudentsQuery = '''
query {
  students {
    id
    firstName
    lastName
    email
  }
}
''';

// Fetch colleges query
const String fetchCollegesQuery = '''
query {
  colleges {
    id
    name
    location
    rating
  }
}
''';
