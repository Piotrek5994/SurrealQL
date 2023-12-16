CREATE user CONTENT {
    email:"test@gmail.com",
    name:"test",
    username:"piotrek",
    password:"test5994",
    birthdate: time::now(),
    location: (0,0),
    image: file:zhsyz1tz05nbfs27w889,
    createdAt: time::now(),
    updatedAt: time::now(),
};
 CREATE file CONTENT {
     url: "test2",
     width: 1,
     height: 1,
     blurhash: "test",
     alt: "zzz"
} RETURN id;
CREATE ONLY interest CONTENT {
  name : "test2",
} RETURN id;
CREATE group CONTENT {
    name: "test2",
    location: (0.0,0.0),
    owner: user:z7pk05bww4zcdmz6r5pi,
    image: file:zhsyz1tz05nbfs27w889,
    interest: interest:9e1tlszam4ezn5la086e,
}
CREATE article CONTENT {
    name: "test",
    image:file:zhsyz1tz05nbfs27w889,
    content: "test",
    interest: interest:9e1tlszam4ezn5la086e,
}
CREATE comment CONTENT {
    content: "test",
    author: user:z7pk05bww4zcdmz6r5pi,
    createdAt: time::now(),
} 
CREATE post CONTENT {
    content: "test",
    author: user:z7pk05bww4zcdmz6r5pi,
    createdAt: time::now(),
}