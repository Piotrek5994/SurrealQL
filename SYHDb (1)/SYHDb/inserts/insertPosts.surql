CREATE post CONTENT {
  author: "user:1",
  id: "post:11",
  content: "Poleci ktoś buty do biegania w budżecie do 500 zł?"
};

CREATE post CONTENT {
  author: "user:2",
  id: "post:12",
  content: "W przyszłym miesiącu maraton. Wybiera się ktoś?"
};

CREATE post CONTENT {
  author: "user:3",
  id: "post:13",
  content: "Szukam trasy z ciekawymi widokami na terenie Krakowa. Chciałby, się ktoś podzielić?"
};

CREATE post CONTENT {
  author: "user:4",
  id: "post:14",
  content: "Zna ktoś jakieś ciekawę leśne trasy do biegania w Krakowie?"
};

RELATE group:1 -> postsGroups -> post:11;
RELATE group:1 -> postsGroups -> post:12;
RELATE group:1 -> postsGroups -> post:13;
RELATE group:1 -> postsGroups -> post:14;