DEFINE SCOPE users SESSION 1w
  SIGNUP {
    IF !string::is::email($email) {
      THROW "invalid-email";
    };

    IF string::len($password) < 6 {
      THROW "password-too-short";
    };

    IF string::len($username) < 2 {
      THROW "username-too-short";
    };

    IF string::len($username) > 30 {
      THROW "username-too-long";
    };

    LET $user = (SELECT * FROM users WHERE email = $email);
    IF $user {
      THROW "user-already-exists";
    };

    RETURN (
      CREATE users CONTENT {
        email: $email,
        username: $username,
        password: crypto::argon2::generate($password),
      }
    );
  }
  
  SIGNIN {
    IF !string::is::email($email) {
      THROW "invalid-email";
    };

    IF string::len($password) < 6 {
      THROW "password-too-short";
    };

    LET $user = (SELECT * FROM users WHERE email = $email AND crypto::argon2::compare(password, $password));
    IF !$user {
      THROW "invalid-credentials";
    };

    RETURN $user;
  };
