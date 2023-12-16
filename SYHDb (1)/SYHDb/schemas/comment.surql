DEFINE TABLE comment SCHEMAFULL PERMISSIONS FULL;
DEFINE FIELD content ON TABLE comment TYPE string;
DEFINE FIELD author ON TABLE comment TYPE record<user>;
DEFINE FIELD createdAt ON TABLE comment TYPE datetime DEFAULT time::now();