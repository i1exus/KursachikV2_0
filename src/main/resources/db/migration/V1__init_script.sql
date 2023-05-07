CREATE TABLE authority
(
    id   BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50)           NOT NULL,
    CONSTRAINT pk_authority PRIMARY KEY (id)
);

ALTER TABLE authority
    ADD CONSTRAINT uc_authority_name UNIQUE (name);

CREATE TABLE user
(
    username VARCHAR(50)      NOT NULL,
    password VARCHAR(100)     NOT NULL,
    enabled  BIT(1) DEFAULT 0 NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY (username)
);

CREATE TABLE user_authorities
(
    authority_id  BIGINT      NOT NULL,
    user_username VARCHAR(50) NOT NULL,
    CONSTRAINT pk_user_authorities PRIMARY KEY (authority_id, user_username)
);

ALTER TABLE user_authorities
    ADD CONSTRAINT uc_user_authorities_user_username UNIQUE (user_username);

ALTER TABLE user
    ADD CONSTRAINT uc_user_password UNIQUE (password);

ALTER TABLE user
    ADD CONSTRAINT uc_user_username UNIQUE (username);

ALTER TABLE user_authorities
    ADD CONSTRAINT fk_useaut_on_authority FOREIGN KEY (authority_id) REFERENCES authority (id);

ALTER TABLE user_authorities
    ADD CONSTRAINT fk_useaut_on_user FOREIGN KEY (user_username) REFERENCES user (username);

CREATE TABLE profile
(
    id         BIGINT AUTO_INCREMENT NOT NULL,
    username   VARCHAR(50)           NULL,
    name       VARCHAR(255)          NULL,
    surname    VARCHAR(255)          NULL,
    patronymic VARCHAR(255)          NULL,
    email      VARCHAR(255)          NULL,
    phone      VARCHAR(60)           NULL,
    CONSTRAINT pk_profile PRIMARY KEY (id)
);

ALTER TABLE profile
    ADD CONSTRAINT FK_PROFILE_ON_USERNAME FOREIGN KEY (username) REFERENCES user (username);

CREATE TABLE real_estate_for_rent
(
    id                 BIGINT AUTO_INCREMENT NOT NULL,
    username           BIGINT                NULL,
    nameofestate       VARCHAR(255)          NULL,
    city               VARCHAR(255)          NULL,
    adress             VARCHAR(255)          NULL,
    date               date                  NULL,
    owner              VARCHAR(255)          NULL,
    preview            BLOB                  NULL,
    price              FLOAT                 NOT NULL,
    countroom          INT                   NOT NULL,
    square             FLOAT                 NOT NULL,
    time               VARCHAR(255)          NULL,
    descriptionforwhom VARCHAR(255)          NULL,
    CONSTRAINT pk_realestateforrent PRIMARY KEY (id)
);

ALTER TABLE real_estate_for_rent
    ADD CONSTRAINT FK_REALESTATEFORRENT_ON_USERNAME FOREIGN KEY (username) REFERENCES profile (id);

CREATE TABLE real_estate_to_buy
(
    id           BIGINT AUTO_INCREMENT NOT NULL,
    username     BIGINT                NULL,
    nameofestate VARCHAR(255)          NULL,
    city         VARCHAR(255)          NULL,
    adress       VARCHAR(255)          NULL,
    date         date                  NULL,
    owner        VARCHAR(255)          NULL,
    preview      BLOB                  NULL,
    price        FLOAT                 NOT NULL,
    countroom    INT                   NOT NULL,
    square       FLOAT                 NOT NULL,
    CONSTRAINT pk_realestatetobuy PRIMARY KEY (id)
);

ALTER TABLE real_estate_to_buy
    ADD CONSTRAINT FK_REALESTATETOBUY_ON_USERNAME FOREIGN KEY (username) REFERENCES profile (id);