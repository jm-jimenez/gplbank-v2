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
			if (result == null){
				res.send({success : false, msg:"El empleado no existe."});
			}
			else {
				result.remove();
				res.send({success : true, msg: "Empleado eliminado con éxito."});
			}
		}, function (err){
			console.log(err);
			res.send({success : false, msg : "Ocurrió un error en el acceso a datos."});
		});
	}

	else{
		res.send({success : false, msg: "No se han recibido datos."});
	}
};