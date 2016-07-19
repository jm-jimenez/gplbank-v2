var keystone = require('keystone'),
	Employee = keystone.list('Employee');

exports = module.exports = function(req, res) {
	var data = (req.method == 'POST') ? req.body : req.query;

	if (data.length > 0){
		var incomingEmployee = data[0];
		Employee.model.findOne()
		.where("dni", incomingEmployee.dni)
		.exec()
		.then(function (result){
			if (result != null){
				result._.password.compare(incomingEmployee.password, function(err, isMatch){
					if(!err && isMatch){
						res.send({success : true, msg : JSON.stringify(result)});
					}
					else{
						res.send({success : false, msg : "Usuario o contraseña incorrecta"});
					}
				});
			}
			else{
				res.send({success : false, msg : "El usuario no existe"});
			}
		}, function(err){
			console.log(err)
		});
	}

	else{
		res.send({success : false, msg: "No se han recibido datos"});
	}
};