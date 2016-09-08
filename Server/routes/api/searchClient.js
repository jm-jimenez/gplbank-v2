var keystone = require('keystone');
var Client = keystone.list('Client');

exports = module.exports = function (req, res) {

    var data = (req.method == 'POST') ? req.body : req.query;

    var searchClient = function (data) {
        var dni = data[0].dni;
        Client.model.findOne()
                .where("dni", dni)
                .exec()
                .then(function (result) {
                    if(result != null ){
                        res.send({success: true, msg: JSON.stringify(result)});
                    }
                    else{
                        res.send({success: false, msg: "El usuario no existe"});
                    }
                }, function (err) {
                    console.log(err);
                });

    };

    if (data.length > 0) {
        searchClient(data);
    } else {
        res.send({success: false, msg: "No se han recibido datos"});
    }
};

