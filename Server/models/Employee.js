var keystone = require('keystone');
var Types = keystone.Field.Types;

/**
 * Employee Model
 * ==========
 */

var Employee = new keystone.List('Employee');

Employee.add({
	dni: {type: String, required: true, index: true, initial : true}, 
	name: { type: String, required: true, initial : true},
	surname1: { type: String, initial: true, required: true},
	surname2: { type: String, initial: true, required: true},
	password: { type: Types.Password, initial: true, required: true},
	isJefe: {type: Types.Boolean, initial: true}
});


/**
 * Registration
 */

Employee.defaultColumns = 'dni, name, surname1, password, isJefe';
Employee.register();
