DEFINE TABLE article SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD name ON TABLE article TYPE string;
DEFINE FIELD image ON TABLE article TYPE option<record<file>>;
DEFINE FIELD content ON TABLE article TYPE string;
DEFINE FIELD interest ON TABLE article TYPE record<interest>;