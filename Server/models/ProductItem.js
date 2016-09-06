var keystone = require('keystone');
var Types = keystone.Field.Types;
var mongoose = require ("mongoose");
/**
 * Employee Model
 * ==========
 */

var ProductItem = new keystone.List('ProductItem', {
    label: "Productos",
    map: {name: "orderId"}
});

ProductItem.add({
    orderId: {type: Number, required: true, index:true},
    type: {type: Types.Select, options: "Cuenta Nómina, Cuenta Ahorro, Tarjetas", initial: true},
    balance: {type: Types.Money, currency: "es-es"}
});

var autoIncrement = require("mongoose-auto-increment");
var connection = mongoose.createConnection("mongodb://localhost/prueba");

autoIncrement.initialize(connection);

ProductItem.schema.plugin(autoIncrement.plugin, {
    model: "ProductItem",
    field: "orderId",
    startAt: 1,
    incrementBy:1
});


/**
 * Registration
 */
ProductItem.defaultColumns = "orderId, type, balance";
ProductItem.register();
