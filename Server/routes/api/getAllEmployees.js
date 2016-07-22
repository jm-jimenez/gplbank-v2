var keystone = require('keystone'),
	Employee = keystone.list('Employee');

exports = module.exports = function(req, res) {

	Employee.model.find().exec(function(err, employees){
		if (!err){
			if (employees.length >0){
				res.send({success:true, msg:JSON.stringify(employees)});
			}
			else{
				res.send({success: false, msg:"No existen datos"});
			}
			
		}
		else{
			res.send({success:false, msg:"Ocurrió un error en el acceso a datos"});
		}
	});
};