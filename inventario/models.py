from django.db import models

class Marca(models.Model):
    logo_Tipo = models.BinaryField()
    nombre = models.CharField(max_length=45)

class TipoProducto(models.Model):
    nombre = models.CharField(max_length=45)
    descripcion = models.CharField(max_length=45)

class Producto(models.Model):
    codigo_barras = models.CharField(max_length=100)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)
    marca = models.ForeignKey(Marca, on_delete=models.CASCADE)
    tipo_producto = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)

class Presentacion(models.Model):
    nombre = models.CharField(max_length=45)
    descripcion = models.CharField(max_length=45)
    precio_venta = models.FloatField()
    precio_compra = models.FloatField()
    cantidad_stock = models.IntegerField()
    unidades_paquete = models.IntegerField()
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)

class Proveedor(models.Model):
    nombre = models.CharField(max_length=45)
    direccion = models.CharField(max_length=45)
    telefono = models.CharField(max_length=45)
    email = models.CharField(max_length=45)
    producto = models.CharField(max_length=45)

from django.db import models

class Compra(models.Model):
    producto = models.CharField(max_length=100, blank=True, null=True)  
    proveedor = models.CharField(max_length=100, blank=True, null=True)  
    cantidad = models.IntegerField(blank=True, null=True)
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)  
    total = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True) 
    fecha = models.DateField(auto_now_add=True, blank=True, null=True)

    def __str__(self):
        return f"Compra {self.id} - {self.producto}"

class ProductoHasCompra(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    compra = models.ForeignKey(Compra, on_delete=models.CASCADE)

class ProductoHasProveedor(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    proveedor = models.ForeignKey(Proveedor, on_delete=models.CASCADE)

class Usuario(models.Model):
    tipo_documento = models.CharField(max_length=45)
    nombre = models.CharField(max_length=45)
    apellido = models.CharField(max_length=45)
    telefono = models.CharField(max_length=11)

class Ventas(models.Model):
    saldo_inicial = models.FloatField()
    saldo_actual = models.FloatField()
    ventas_realizadas = models.IntegerField()
    estado = models.CharField(max_length=45)
    fecha_apertura = models.DateTimeField()
    fecha_cierre = models.DateTimeField()
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)

class PresentacionHasVentas(models.Model):
    presentacion = models.ForeignKey(Presentacion, on_delete=models.CASCADE)
    ventas = models.ForeignKey(Ventas, on_delete=models.CASCADE)


class Tambo(models.Model):
    presentacion = models.ForeignKey(Presentacion, on_delete=models.CASCADE)
    ventas = models.ForeignKey(Ventas, on_delete=models.CASCADE)