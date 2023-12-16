DEFINE TABLE user SCHEMAFULL PERMISSIONS FULL;

DEFINE FIELD email ON TABLE user TYPE string VALUE string::lowercase($value) ASSERT string::is::email($value);
DEFINE FIELD username ON TABLE user TYPE string ASSERT string::len($value) >= 2  AND string::len($value) <= 30;
DEFINE FIELD name ON TABLE user TYPE string ASSERT string::len($value) > 2; 
DEFINE FIELD password ON TABLE user TYPE string PERMISSIONS NONE ASSERT string::len($value) >= 5;
DEFINE FIELD birthdate ON TABLE user TYPE option<datetime> DEFAULT NONE;
DEFINE FIELD location ON TABLE user TYPE option<point> DEFAULT NONE;
DEFINE FIELD image ON TABLE user TYPE option<record<file>> DEFAULT NONE;
DEFINE FIELD createdAt ON TABLE user TYPE datetime DEFAULT time::now();
DEFINE FIELD updatedAt ON TABLE user TYPE datetime DEFAULT time::now();
DEFINE FIELD bio ON TABLE user TYPE option<string>;

DEFINE INDEX emailIndex ON TABLE user COLUMNS email UNIQUE;
DEFINE INDEX usernameIndex ON TABLE user COLUMNS username UNIQUE;