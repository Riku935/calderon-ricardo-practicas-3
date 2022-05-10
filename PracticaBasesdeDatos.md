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

- Numero de transaccion
- Nombre del empleado
- Fecha de la transaccion
- Hora de la transaccion 
- Monto total 


__Compras__

- Numero de transaccion
- Nombre del empleado
- Fecha de la transaccion
- Hora de la transaccion 
- Direccion de la sucursal
- Monto total 
- Productos comprados

__Cliente__

- Nombre
- Numero de socio
- Dinero disponible (¿?)

__Empleados__

- Nombre 
- Edad
- Numero de empleado
- Fecha de incorporacion
- Clave RFC

__Menú__

- Producto
- Precio del producto

## Relaciones:

1. Los __clientes__ realizan __compras__ (1 - M)
1. Los __empleados__ realizan __ventas__ (M - M)
1. Los __clientes__ realizan __quejas__ (1 - M)
1. Los __clientes__ revisan el __menu__ (1 - M)



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
 
