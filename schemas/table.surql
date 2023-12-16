DEFINE TABLE user SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD email ON TABLE user TYPE string VALUE string::lowercase($value) ASSERT string::is::email($value);
DEFINE FIELD NAME ON TABLE user ASSERT string::len($value) => 2;
DEFINE FIELD username ON TABLE user TYPE string ASSERT string::len($value) >= 2  AND string::len($value) <= 30;
DEFINE FIELD bio ON TABLE user TYPE option<string>;
DEFINE FIELD password ON TABLE user TYPE string PERMISSIONS NONE ASSERT string::len($value) >= 5;
DEFINE FIELD birthdate ON TABLE user TYPE datetime;
DEFINE FIELD location ON TABLE user TYPE point;
DEFINE FIELD image ON TABLE user TYPE option<record<file>> DEFAULT NONE;
DEFINE FIELD createdAt ON TABLE user TYPE datetime DEFAULT time::now();
DEFINE FIELD updatedAt ON TABLE user TYPE datetime DEFAULT time::now();
DEFINE INDEX emailIndex ON TABLE user COLUMNS email UNIQUE;
DEFINE INDEX usernameIndex ON TABLE user COLUMNS username UNIQUE;

DEFINE TABLE file SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD url ON TABLE file TYPE string;
DEFINE FIELD width ON TABLE file TYPE int;
DEFINE FIELD height ON TABLE file TYPE int;
DEFINE FIELD blurhash ON TABLE file TYPE string;
DEFINE FIELD alt ON TABLE file TYPE string;
DEFINE INDEX urlIndex ON TABLE file COLUMNS url UNIQUE;

DEFINE TABLE interest SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD name ON TABLE interest TYPE string ASSERT string::len($value) > 2;
DEFINE FIELD category ON TABLE interest TYPE string;
DEFINE INDEX interestIndex ON TABLE interest COLUMNS name UNIQUE;

DEFINE TABLE group SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD name ON TABLE group TYPE string;
DEFINE FIELD location ON TABLE group TYPE point;
DEFINE FIELD owner ON TABLE group TYPE record<user>;
DEFINE FIELD image ON TABLE group TYPE record<file>;
DEFINE FIELD interest ON TABLE group TYPE record<interest>;

DEFINE TABLE article SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD name ON TABLE article TYPE string;
DEFINE FIELD image ON TABLE article TYPE record<file>;
DEFINE FIELD content ON TABLE article TYPE string;
DEFINE FIELD interest ON TABLE article TYPE record<interest>;

DEFINE TABLE post SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD content ON TABLE post TYPE string;
DEFINE FIELD author ON TABLE post TYPE record<user>;
DEFINE FIELD createdAt ON TABLE post TYPE datetime;

DEFINE TABLE comment SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD content ON TABLE comment TYPE string;
DEFINE FIELD author ON TABLE comment TYPE record<user>;
DEFINE FIELD createdAt ON TABLE comment TYPE datetime;