import mysql.connector
from datetime import datetime

def create_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="1234",
        database="pruebatienda"
    )

# Funciones CRUD Clientes
def call_create_cliente():
    print("----------------------------------------------")
    nombre = input("Ingrese el nombre del cliente: ")
    direccion = input("Ingrese la dirección del cliente: ")
    email = input("Ingrese el email del cliente: ")
    telefono = input("Ingrese el teléfono del cliente: ")
    historial_compras = input("Ingrese el historial de compras del cliente: ")
    preferencias = input("Ingrese las preferencias del cliente: ")
    print("----------------------------------------------")

    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('create_cliente', [nombre, direccion, email, telefono, historial_compras, preferencias])
    conn.commit()
    cursor.close()
    conn.close()
    print("Cliente creado exitosamente.")

def call_read_cliente():
    cliente_id = input("Ingrese el ID del cliente a leer: ")

    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('read_cliente', [cliente_id])
    for result in cursor.stored_results():
        for row in result.fetchall():
            print(row)
    cursor.close()
    conn.close()

def call_update_cliente():
    cliente_id = input("Ingrese el ID del cliente a actualizar: ")
    nombre = input("Ingrese el nuevo nombre del cliente: ")
    direccion = input("Ingrese la nueva dirección del cliente: ")
    email = input("Ingrese el nuevo email del cliente: ")
    telefono = input("Ingrese el nuevo teléfono del cliente: ")
    historial_compras = input("Ingrese el nuevo historial de compras del cliente: ")
    preferencias = input("Ingrese las nuevas preferencias del cliente: ")
    print("[-----------------------------------------]")

    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('update_cliente', [cliente_id, nombre, direccion, email, telefono, historial_compras, preferencias])
    conn.commit()
    cursor.close()
    conn.close()
    print("Cliente actualizado exitosamente.")

def call_delete_cliente():
    cliente_id = input("Ingrese el ID del cliente a eliminar: ")
    print("[-----------------------------------------]")

    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('delete_cliente', [cliente_id])
    conn.commit()
    cursor.close()
    conn.close()
    print("Cliente eliminado exitosamente.")

def crud_cliente_menu():
    while True:
        print("----------------------------------------------")
        print("\nOperaciones CRUD de Clientes:")
        print("1. Crear Cliente")
        print("2. Leer Cliente")
        print("3. Actualizar Cliente")
        print("4. Eliminar Cliente")
        print("5. Volver al Menú Administrador")
        opcion = input("Seleccione una opción (1-5): ")
        print("----------------------------------------------")

        if opcion == '1':
            call_create_cliente()
        elif opcion == '2':
            call_read_cliente()
        elif opcion == '3':
            call_update_cliente()
        elif opcion == '4':
            call_delete_cliente()
        elif opcion == '5':
            break
        else:
            print("Opción no válida. Por favor, intente de nuevo.")

# Funciones CRUD Productos
def call_create_producto():
    print("-------------------------------------------------------")
    nombre = input("Ingrese el nombre del producto: ")
    descripcion = input("Ingrese la descripción del producto: ")
    precio = float(input("Ingrese el precio del producto: "))
    disponibilidad = int(input("Ingrese la disponibilidad del producto: "))
    categoria_id = int(input("Ingrese el ID de la categoría del producto: "))
    proveedor_id = int(input("Ingrese el ID del proveedor del producto: "))
    print("-------------------------------------------------------")

    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('create_producto', [nombre, descripcion, precio, disponibilidad, categoria_id, proveedor_id])
    conn.commit()
    cursor.close()
    conn.close()
    print("Producto creado exitosamente.")

def call_listar_productos():
    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('read_productos_all')
    print("Listado de Productos:")
    for result in cursor.stored_results():
        for row in result.fetchall():
            print("ID:", row[0])
            print("Nombre:", row[1])
            print("Descripción:", row[2])
            print("Precio:", row[3])
            print("Disponibilidad:", row[4])
            print("ID de Categoría:", row[5])
            print("ID de Proveedor:", row[6])
            print("-----------------------------")
    cursor.close()
    conn.close()

def call_read_producto_by_id():
    producto_id = int(input("Ingrese el ID del producto a leer: "))
    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('read_producto', [producto_id])
    for result in cursor.stored_results():
        for row in result.fetchall():
            precio = float(row[3])
            print("-----------------------------")
            print("ID:", row[0])
            print("Nombre:", row[1])
            print("Descripción:", row[2])
            print("Precio:", round(precio, 2))
            print("Disponibilidad:", row[4])
            print("Categoría ID:", row[5])
            print("Proveedor ID:", row[6])
            print("-----------------------------")
    cursor.close()
    conn.close()

def call_read_producto():
    while True:
        print("\nOpciones de Lectura de Producto:")
        print("1. Listar todos los productos")
        print("2. Leer producto por ID")
        print("3. Volver al menú principal")
        opcion = input("Seleccione una opción (1-3): ")

        if opcion == '1':
            call_listar_productos()
        elif opcion == '2':
            call_read_producto_by_id()
        elif opcion == '3':
            break
        else:
            print("Opción no válida. Por favor, intente de nuevo.")

def call_update_producto():
    print("----------------------------------------------------------")
    producto_id = int(input("Ingrese el ID del producto a actualizar: "))
    nombre = input("Ingrese el nuevo nombre del producto: ")
    descripcion = input("Ingrese la nueva descripción del producto: ")
    precio = float(input("Ingrese el nuevo precio del producto: "))
    disponibilidad = int(input("Ingrese la nueva disponibilidad del producto: "))
    categoria_id = int(input("Ingrese el nuevo ID de la categoría del producto: "))
    proveedor_id = int(input("Ingrese el nuevo ID del proveedor del producto: "))
    print("----------------------------------------------------------")

    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('update_producto', [producto_id, nombre, descripcion, precio, disponibilidad, categoria_id, proveedor_id])
    conn.commit()
    cursor.close()
    conn.close()
    print("Producto actualizado exitosamente.")

def call_delete_producto():
    producto_id = int(input("Ingrese el ID del producto a eliminar: "))
    conn = create_connection()
    cursor = conn.cursor()
    cursor.callproc('delete_producto', [producto_id])
    conn.commit()
    cursor.close()
    conn.close()
    print("Producto eliminado exitosamente.")

def crud_producto_menu():
    while True:
        print("----------------------------------")
        print("\nOperaciones CRUD de Productos:" )
        print("1. Crear Producto")
        print("2. Leer Producto")
        print("3. Actualizar Producto")
        print("4. Eliminar Producto")
        print("5. Volver al Menú Administrador")
        print("----------------------------------")
        opcion = input("Seleccione una opción (1-5): ")

        if opcion == '1':
            call_create_producto()
        elif opcion == '2':
            call_read_producto()
        elif opcion == '3':
            call_update_producto()
        elif opcion == '4':
            call_delete_producto()
        elif opcion == '5':
            break
        else:
            print("Opción no válida. Por favor, intente de nuevo.")

# Funciones para el Cliente
def ordenar():
    conn = create_connection()
    cursor = conn.cursor()

    telefono = input("Ingrese el número de teléfono del cliente: ")
    
    # Verificar si el cliente existe
    cursor.execute("SELECT id FROM clientes WHERE telefono = %s", (telefono,))
    cliente = cursor.fetchone()

    if not cliente:
        print("El número de teléfono no corresponde a ningún cliente registrado.")
        return

    cliente_id = cliente[0]

    producto_id = input("Ingrese el ID del producto a ordenar: ")
    cantidad = int(input("Ingrese la cantidad a ordenar: "))
    print("[-----------------------------]")

    try:
        # Crear la orden
        cursor.callproc('create_orden', [cliente_id, 'No Pagado', producto_id, cantidad])

        # Obtener el ID de la orden creada
        cursor.execute("SELECT LAST_INSERT_ID()")
        orden_id = cursor.fetchone()[0]

        if orden_id:
            print("Orden creada exitosamente.")

            # Obtener detalles de la orden y el cliente
            cursor.execute("""
                SELECT o.id, c.nombre, o.fecha, o.total, o.direccion_envio 
                FROM ordenes o 
                JOIN clientes c ON o.cliente_id = c.id 
                WHERE o.id = %s
            """, (orden_id,))
            orden = cursor.fetchone()

            if orden:
                # Mostrar factura
                print("--------------------------------------")
                print("Orden:")
                print("ID de Detalles de la Orden:", orden[0])
                print("Cliente:", orden[1])
                print("Fecha de Orden:", orden[2])
                print("Dirección de Envío:", orden[4])
                print("Total:", orden[3])
                print("--------------------------------------")
            else:
                print("No se encontró la orden con el ID proporcionado.")
        else:
            print("Error al crear la orden.")

        conn.commit()
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        cursor.close()
        conn.close()

def DetallesOrden():
    telefono = input("Ingrese el número de teléfono del cliente: ")

    conn = create_connection()
    cursor = conn.cursor()

    cursor.execute("SELECT id FROM clientes WHERE telefono = %s", (telefono,))
    cliente = cursor.fetchone()

    if not cliente:
        print("El número de teléfono no corresponde a ningún cliente registrado.")
        return

    cliente_id = cliente[0]

    cursor.execute("SELECT id, estado, total FROM ordenes WHERE cliente_id = %s", (cliente_id,))
    ordenes = cursor.fetchall()

    if not ordenes:
        print("El cliente no tiene órdenes registradas.")
        return

    print("Órdenes del Cliente:")
    for orden in ordenes:
        print(f"ID de la Orden: {orden[0]}")

    orden_id = input("Ingrese el ID de la orden para ver los detalles: ")

    cursor.execute("""
        SELECT d.id, d.orden_id, p.nombre, d.cantidad, d.precio, o.estado
        FROM detalleordenes d
        JOIN productos p ON d.producto_id = p.id
        JOIN ordenes o ON d.orden_id = o.id
        WHERE d.orden_id = %s
    """, (orden_id,))
    detalles = cursor.fetchall()

    if not detalles:
        print("No se encontraron detalles para la orden seleccionada.")
        return

    print("Detalles de la Orden:")
    for detalle in detalles:
        print("-----------------------------")
        print(f"ID de Orden: {detalle[1]}")
        print(f"Nombre de Producto: {detalle[2]}")
        print(f"Cantidad: {detalle[3]}")
        print(f"Valor Total: {detalle[4]}")
        print(f"Estado de la Orden: {detalle[5]}")
        print("-----------------------------")

    cursor.close()
    conn.close()

def pagar():
    conn = create_connection()
    cursor = conn.cursor()

    telefono = input("Ingrese el número de teléfono del cliente: ")

    cursor.execute("SELECT id FROM clientes WHERE telefono = %s", (telefono,))
    cliente = cursor.fetchone()

    if not cliente:
        print("El número de teléfono no corresponde a ningún cliente registrado.")
        return

    cliente_id = cliente[0]

    cursor.execute("SELECT id, total FROM ordenes WHERE cliente_id = %s AND estado = 'No Pagado'", (cliente_id,))
    ordenes = cursor.fetchall()

    if not ordenes:
        print("No hay órdenes pendientes de pago para este cliente.")
        return

    print("Órdenes pendientes de pago:")
    for orden in ordenes:
        print(f"ID de la Orden: {orden[0]}, Total: {orden[1]}")

    orden_id = input("Ingrese el ID de la orden a pagar: ")

    cursor.execute("SELECT total FROM ordenes WHERE id = %s AND cliente_id = %s AND estado = 'No Pagado'", (orden_id, cliente_id))
    orden = cursor.fetchone()

    if not orden:
        print("El ID de la orden no es válido o ya ha sido pagado.")
        return

    total = orden[0]
    print("-----------------------------")
    print("Seleccione el método de pago:")
    print("1. Tarjeta de crédito")
    print("2. Efectivo")
    print("[-----------------------------]")
    metodo_pago_opcion = input("Ingrese el número correspondiente al método de pago: ")

    metodo_pago_id = 1 if metodo_pago_opcion == '1' else 2  # Asigna el ID del método de pago según la opción seleccionada

    try:
        # Actualizar el estado de la orden a "Pagado" usando el procedimiento almacenado
        cursor.callproc('create_transaccion', [orden_id, metodo_pago_id, total, datetime.now().date(), 'Pagado'])
        conn.commit()
        print("[-----------------------------]")
        print("Orden Pagada exitosamente.")

        # Crear factura correspondiente
        cursor.callproc('create_factura', [orden_id])
        conn.commit()
        print("Factura creada exitosamente.")
        print("[-----------------------------]")

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        cursor.close()
        conn.close()


def mostrar_factura():
    telefono = input("Ingrese el número de teléfono del cliente: ")

    conn = create_connection()
    cursor = conn.cursor()

    cursor.execute("SELECT id FROM clientes WHERE telefono = %s", (telefono,))
    cliente = cursor.fetchone()

    if not cliente:
        print("El número de teléfono no corresponde a ningún cliente registrado.")
        return

    cliente_id = cliente[0]

    cursor.execute("SELECT id FROM ordenes WHERE cliente_id = %s AND estado = 'Pagado'", (cliente_id,))
    ordenes = cursor.fetchall()

    if not ordenes:
        print("El cliente no tiene órdenes pagadas registradas.")
        return

    print("Órdenes del Cliente:")
    for orden in ordenes:
        print(f"ID de la Orden: {orden[0]}")

    orden_id = input("Ingrese el ID de la orden que desea ver: ")

    cursor.callproc('mostrar_factura', [telefono, orden_id])
    for result in cursor.stored_results():
        factura = result.fetchone()
        if not factura:
            print("No se encontró una factura asociada a la orden proporcionada.")
            return

        print("-----------------------------")
        print("Factura:")
        print("ID de Factura:", factura[0])
        print("Fecha de Emisión:", factura[1])
        print("Total:", factura[2])
        print("Nombre del Cliente:", factura[3])
        print("Dirección de Envío:", factura[4])
        print("-----------------------------")

    cursor.close()
    conn.close()


def menu_cliente():
    while True:
        print("--------------------------------------")
        print("*** Menú Cliente ***")
        print("1. Registrar Cliente")
        print("2. Mostrar Productos")
        print("3. Ordenar")
        print("4. Detalles de la Orden")
        print("5. Pagar")
        print("6. Factura")
        print("7. Volver al Menú Principal")
        print("--------------------------------------")

        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            call_create_cliente()
        elif opcion == "2":
            call_listar_productos()
        elif opcion == "3":
            ordenar()
        elif opcion == "4":
            DetallesOrden()
        elif opcion == "5":
            pagar()
        elif opcion == "6":
            mostrar_factura()
        elif opcion == "7":
            break
        else:
            print("Opción no válida. Por favor, seleccione una opción válida.")

# Menú Administrador
def menu_administrador():
    while True:
        print("--------------------------------------")
        print("*** Menú Administrador ***")
        print("1. CRUD Clientes")
        print("2. CRUD Productos")
        print("3. Volver al Menú Principal")
        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            crud_cliente_menu()
        elif opcion == "2":
            crud_producto_menu()
        elif opcion == "3":
            break
        else:
            print("Opción no válida, por favor intente de nuevo.")

# Menú Principal
def main():
    while True:
        print("--------------------------------------")
        print("*** Menú Principal ***")
        print("1. Menú Administrador")
        print("2. Menú Cliente")
        print("3. Salir")
        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            menu_administrador()
        elif opcion == "2":
            menu_cliente()
        elif opcion == "3":
            print("Saliendo...")
            break
        else:
            print("Opción no válida, por favor intente de nuevo.")

# Ejecutar el menú principal
if __name__ == "__main__":
    main()
