void outer(String name, String id) {
    String inner() {
        final splitted = name.split(' ');
        String lastName = splitted[1]; // Nom de famille
        String firstName = splitted[0]; // Prénom
        return "Hello Agent ${lastName[0]}.${firstName} your id is $id";
    }
    print(inner());
}