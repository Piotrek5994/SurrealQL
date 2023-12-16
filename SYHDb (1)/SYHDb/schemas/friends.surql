DEFINE INDEX uniqueFriends
    ON TABLE friends
    COLUMNS in, out UNIQUE;