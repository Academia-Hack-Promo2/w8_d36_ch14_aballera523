# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customers = Customer.create([
	{name: 'Alexander', last_name: 'Ballera', id_number: 'v08983523', address: 'Bello Monte', phone: '02123267340', mail: 'alex@gmail.com'},
	{name: 'Pedro', last_name: 'Gonzalez', id_number: 'v08983524', address: 'Sabana Grande', phone: '02123267341', mail: 'pedro@gmail.com'},
	{name: 'Jose', last_name: 'Rodriguez', id_number: 'v08983525', address: 'Chacaito', phone: '02123267342', mail: 'jose@gmail.com'},
	{name: 'Juan', last_name: 'Martinez', id_number: 'v08983526', address: 'Chacao', phone: '02123267343', mail: 'juan@gmail.com'}
	])
accounts = Account.create([
	{a_type: 'Corriente', number: '0123-0123-12-1234567890', balance: 20000.0, customer_id: 1},
	{a_type: 'Corriente', number: '0123-0123-12-1234567891', balance: 20000.0, customer_id: 2},
	{a_type: 'Corriente', number: '0123-0123-12-1234567892', balance: 20000.0, customer_id: 3},
	{a_type: 'Corriente', number: '0123-0123-12-1234567893', balance: 20000.0, customer_id: 4},
	{a_type: 'Ahorros', number: '0123-0123-12-1234567894', balance: 20000.0, customer_id: 1},
	{a_type: 'Ahorros', number: '0123-0123-12-1234567895', balance: 20000.0, customer_id: 2},
	{a_type: 'Ahorros', number: '0123-0123-12-1234567896', balance: 20000.0, customer_id: 3},
	{a_type: 'Ahorros', number: '0123-0123-12-1234567897', balance: 20000.0, customer_id: 4},
	{a_type: 'Plazo Fijo', number: '0123-0123-12-1234567898', balance: 20000.0, customer_id: 1},
	{a_type: 'Plazo Fijo', number: '0123-0123-12-1234567899', balance: 20000.0, customer_id: 2},
	{a_type: 'Plazo Fijo', number: '0123-0123-12-1234567810', balance: 20000.0, customer_id: 3},
	{a_type: 'Plazo Fijo', number: '0123-0123-12-1234567811', balance: 20000.0, customer_id: 4},
	{a_type: 'Inversiones', number: '0123-0123-12-1234567812', balance: 20000.0, customer_id: 1},
	{a_type: 'Inversiones', number: '0123-0123-12-1234567813', balance: 20000.0, customer_id: 2},
	{a_type: 'Inversiones', number: '0123-0123-12-1234567814', balance: 20000.0, customer_id: 3},
	{a_type: 'Inversiones', number: '0123-0123-12-1234567815', balance: 20000.0, customer_id: 4}
	])

operations = Operation.create([
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567890', amount: 20000.0, account_id: 1, customer_id: 1 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567891', amount: 20000.0, account_id: 2, customer_id: 2 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567892', amount: 20000.0, account_id: 3, customer_id: 3 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567893', amount: 20000.0, account_id: 4, customer_id: 4 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567894', amount: 20000.0, account_id: 5, customer_id: 1 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567895', amount: 20000.0, account_id: 6, customer_id: 2 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567896', amount: 20000.0, account_id: 7, customer_id: 3 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567897', amount: 20000.0, account_id: 8, customer_id: 4 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567898', amount: 20000.0, account_id: 9, customer_id: 1 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567899', amount: 20000.0, account_id: 10, customer_id: 2 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567810', amount: 20000.0, account_id: 11, customer_id: 3 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567811', amount: 20000.0, account_id: 12, customer_id: 4 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567812', amount: 20000.0, account_id: 13, customer_id: 1 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567813', amount: 20000.0, account_id: 14, customer_id: 2 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567814', amount: 20000.0, account_id: 15, customer_id: 3 },
	{o_type: 'Deposito', pay_type: 'Efectivo', date: '2015-06-01', a_origin: '0123-0123-12-1234567815', amount: 20000.0, account_id: 16, customer_id: 4 }
	])