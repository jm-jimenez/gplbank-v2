var keystone = require('keystone');
var Types = keystone.Field.Types;

/**
 * Client Model
 * ==========
 */

var Client = new keystone.List('Client');

Client.add({
    dni: {type: String, required: true, index: true, initial: true},
    name: {type: String, required: true, initial: true},
    surname1: {type: String, initial: true, required: true},
    surname2: {type: String, initial: true, required: true},
    password: {type: Types.Password, initial: true, required: true},
});

/**
 * Registration
 */
Client.defaultColumns = "dni, name, surname1, surname2";
Client.register();