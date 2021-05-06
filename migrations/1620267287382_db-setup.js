/* eslint-disable camelcase */

exports.shorthands = undefined;

// SETUP DB according to https://lucid.app/lucidchart/8c3eef37-776d-45cf-8129-2e24253ad12e/edit?shared=true&page=0_0#

exports.up = pgm => {
  pgm.sql(`
    CREATE TABLE guilds (
      id integer PRIMARY KEY,
      guild_name VARCHAR ( 200 ) NOT NULL
    );
  `)
};

exports.down = pgm => {
  pgm.sql(`
    DROP TABLE IF EXISTS guilds;
  `);
};
