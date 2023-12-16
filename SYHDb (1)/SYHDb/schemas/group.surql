DEFINE TABLE group SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD name ON TABLE group TYPE string;
DEFINE FIELD location ON TABLE group TYPE option<point> DEFAULT NONE;
DEFINE FIELD owner ON TABLE group TYPE record<user>;
DEFINE FIELD image ON TABLE group TYPE option<record<file>> DEFAULT NONE;
DEFINE FIELD interest ON TABLE group TYPE record<interest>;