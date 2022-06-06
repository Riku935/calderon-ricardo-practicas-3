# Base de datos de una Hamburgueseria

## Entidades:

1.  Venta 
1.  Compra
1.  Clientes
1.  Empleados
1.  Quejas y Sugerencias
1.  Menu (__CAT__)

## Atributos:

__Ventas__

- Numero de transaccion (PK)
- Nombre del empleado (FK)
- Fecha de la transaccion
- Hora de la transaccion 
- Monto total 


__Compras__

- Numero de transaccion (PK)
- Nombre del empleado (FK)
- Fecha de la transaccion
- Hora de la transaccion 
- Direccion de la sucursal
- Monto total 
- Productos comprados

__Cliente__

- Numero temporal de cliente (PK)
- Nombre (FK_id)
- Numero de socio (UQ)

__Empleados__
 
- Numero de empleado (PK_id)
- Nombre de empleado 
- Edad
- Fecha de incorporacion
- Clave RFC (UQ)

__Menú__

- ID del producto (PK)
- Nombre del producto 
- Precio del producto

__Quejas__

- Id de la queja (PK)
- Nombre de cliente (FK)
- Fecha
- Comentario (PK)

## Relaciones:

1. Los __clientes__ realizan __compras__ (1 - M)
1. Los __empleados__ realizan __ventas__ (M - M)
1. Los __clientes__ realizan __quejas__ (1 - M)
1. Los __clientes__ revisan el __menu__ (1 - M)
1. Los __empleados__ revisan las __quejas__ (M - M)


### Valores del menu:
 - Hamburguesa sencilla
 - Hamburguesa doble
 - Hamburguesa hawaiana
 - Hamburguesa de pollo
 - Hamburguesa angus
 - Hamburguesa BBQ
 - Hamburguesa Roast Beef
 - Hamburguesa vegetariana
 - Papás a la francesa
 - Aros de cebolla
 - Agua embotellada
 - Refresco de Manzana
 - Refresco de cola
 - Refresco de naranja
 - Refresco de limon
 - Malteada de chocolate
 - Malteada de fresa
 - Malteada de vainilla


 ## Reglas de negocio:

 
 ## Venta
 1. Crear venta
 1. Leer todas las ventas
 1. Actualizar ventas

 ## Compra
 1. Crear compra
 1. Leer todas las compras
 1. Actualizar compra

 ## Cliente
 1. Crear cliente
 1. Leer todos los clientes
 1. Actualizar datos del cliente
 1. Eliminar cliente


 ## Empleado
 1. Crear empleado
 1. Leer todos los empleados
 1. Actualizar datos del empleado
 1. Eliminar empleado

 ## Menu
 1. Crear Menu
 1. Actualizar Menu
 1. Leer Menu

 ## Quejas
 1. Crear queja
 1. Leer quejas
 1. Eliminar queja
 
