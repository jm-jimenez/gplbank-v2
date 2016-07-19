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
				console.log("Olrait, se ha encontrado");
				result._.password.compare(incomingEmployee.password, function(err, isMatch){
					if(!err && isMatch){
						console.log("Validación correcta.");
						res.send({success : true, msg : JSON.stringify(result)});
					}
					else{
						console.log("usuario o contraseña incorrecta");
					}
				});
			}
			else{
				console.log("El usuario no existe");
			}
		}, function(err){
			console.log(err)
		});
	}

	else{
		res.send({success : false, msg: "No se han recibido datos"});
	}
};