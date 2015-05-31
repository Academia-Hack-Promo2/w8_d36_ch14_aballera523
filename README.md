Enunciado:

Se debe desarrollar el sistema de operaciones bancarias en rails para el banco MyBank, que permita las siguientes acciones

1.- Registrar a cualquier Persona como Cliente del Banco

1.1.- Los datos a tomar en cuenta son:

a.- Nombres y Apellidos b.- Nro de Cédula o Pasaporte c.- Dirección d.- Nro. de Teléfono Local e.- Nro. de Teléfono Celular f.- Correo electrónico

1.2.- Los clientes no poder estar repetidos (el campo único a considerar es el nro de Cédula o Pasaporte)

2.- Aperturar Cuentas en el banco

2.1.- Los tipo de cuenta que ofrece el Banco MyBank, son Cuenta Corriente, Cuenta de Ahorros y Depósitos a largo Plazo. 2.2.- Los Clientes pueden tener más un tipo de cuenta y más de una cuenta del mismo tipo. 2.3.- Al momento de aperturar la cuenta se debe indicar el monto de apertura.

3.- Realizar depósitos en las cuentas

3.1.- Los depósitos deben indicar si son en efectivo o cheque, y la cuenta al que es depositado 3.2.- Luego de realizarse el depósito deben actualizarse el saldo de la cuenta

4.- Realizar Retiros de las cuentas de ahorro y corriente (No se debe permitir retiros a cuentas de Depósitos a Largo Plazo)

4.1.- Los retiros deben indicar el monto 4.2.- Luego de realizarse el retiro debe actualizarse el saldo de la cuenta

5.- Realizar Transferencias entre cuentas

5.1.- Las Transferencias deben indicar el monto, cuenta de origen y cuenta destino 5.2.- Se debe actualizar el saldo de la cuenta origen 5.3.- Si la cuenta destino es una cuenta del mismo banco se debe actualizar el saldo

NOTA: Todas las operaciones (Apertura, Depósitos, Retiros y Transferencias) deben guardar la fecha en que son realizadas

6.- Consultar Saldo actual de una cuenta 7.- Consultar los movimientos de un mes en un cuenta

A CONSIDERAR:

a.- Los números de cuenta son de 20 digitos numericos, 4 primeros dígitos Corresponden al Banco, 4 siguientes al tipo de cuenta y 12 siguientes al correlativo de la cuenta b.- Las operaciones y las respuestas de las mismas deben ser almacenadas y consultadas desde la base de datos. c.- El código del sistema debe estar almacenado en el repositorio correspondiente al reto en github