CREATE TABLE contact
(
    id            BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    first_name    VARCHAR(255),
    last_name     VARCHAR(255),
    age           INTEGER,
    is_favorite   BOOLEAN,
    contact_group VARCHAR(255),
    CONSTRAINT pk_contact PRIMARY KEY (id)
);
CREATE TABLE address
(
    id          BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    country     VARCHAR(255),
    city        VARCHAR(255),
    index       VARCHAR(255),
    street      VARCHAR(255),
    home_nr     VARCHAR(255),
    is_favorite BOOLEAN,
    contact_id  BIGINT,
    CONSTRAINT pk_address PRIMARY KEY (id)
);

ALTER TABLE address
    ADD CONSTRAINT FK_ADDRESS_ON_CONTACT FOREIGN KEY (contact_id) REFERENCES contact (id);
CREATE TABLE email
(
    id          BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    email       VARCHAR(255),
    is_favorite BOOLEAN,
    contact_id  BIGINT,
    CONSTRAINT pk_email PRIMARY KEY (id)
);

ALTER TABLE email
    ADD CONSTRAINT FK_EMAIL_ON_CONTACT FOREIGN KEY (contact_id) REFERENCES contact (id);
CREATE TABLE phone
(
    id               BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    country_code     VARCHAR(255),
    telephone_number VARCHAR(255),
    favorite         BOOLEAN,
    contact_id       BIGINT,
    CONSTRAINT pk_phone PRIMARY KEY (id)
);

ALTER TABLE phone
    ADD CONSTRAINT FK_PHONE_ON_CONTACT FOREIGN KEY (contact_id) REFERENCES contact (id);