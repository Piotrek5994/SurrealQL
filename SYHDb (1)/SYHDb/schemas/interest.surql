DEFINE TABLE interest SCHEMAFULL PERMISSIONS FULL;

DEFINE FIELD name ON TABLE interest TYPE string ASSERT string::len($value) > 2;
DEFINE FIELD category ON TABLE interest TYPE string;

DEFINE INDEX interestIndex ON TABLE interest COLUMNS name UNIQUE;