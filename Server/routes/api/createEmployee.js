var keystone = require('keystone'),
	Employee = keystone.list('Employee');

exports = module.exports = function(req, res) {

	var data = (req.method == 'POST') ? req.body : req.query;

	var insertEmployee = function(incomingEmployee){
		var newEmployee = new Employee.model({
			dni : incomingEmployee.dni,
			name : incomingEmployee.name,
			surname1 : incomingEmployee.surname1,
			surname2 : incomingEmployee.surname2,
			password : incomingEmployee.password,
			isJefe : incomingEmployee.isJefe
		});

		newEmployee.save(function (err){
			if (err){
				throw err;
			}
			else{
				res.send({success : true, msg: "Empleado creado"});
			}
		});
	};

	var checkEmployeeExists = function(data){
		var incomingEmployee = data[0];
		Employee.model.findOne()
		.where("dni", incomingEmployee.dni)
		.exec()
		.then(function (result){
			if (result != null){
				res.send({success : false, msg : "El usuario ya existe"});
			}
			else{
				insertEmployee(incomingEmployee);
			}
		}, function(err){
			console.log(err)
		});
	};

	if (data.length > 0){
		checkEmployeeExists(data);
	}
	else{
		res.send({success : false, msg: "No se han recibido datos"});
	}
};