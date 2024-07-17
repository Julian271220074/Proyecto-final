from django.db import models

class Marca(models.Model):
    logo_tipo = models.ImageField(upload_to='logos/', null=True, blank=True, editable=True)
    nombre = models.CharField(max_length=45, unique=True)
    codigo = models.CharField(max_length=50, unique=True)
    activo = models.BooleanField(default=True)

    def __str__(self):
        return self.nombre

class TipoProducto(models.Model):
    nombre = models.CharField(max_length=45)
    descripcion = models.CharField(max_length=45)

    def __str__(self):
        return self.nombre

class Producto(models.Model):
    codigo_barras = models.CharField(max_length=100, unique=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=100)
    marca = models.ForeignKey(Marca, on_delete=models.CASCADE)
    tipo_producto = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    proveedores = models.ManyToManyField('Proveedor', through='ProductoHasProveedor', related_name='productos')
    compras = models.ManyToManyField('Compra', through='ProductoHasCompra', related_name='productos')

    def __str__(self):
        return self.nombre

class Presentacion(models.Model):
    nombre = models.CharField(max_length=45)
    descripcion = models.CharField(max_length=45)
    precio_venta = models.DecimalField(max_digits=10, decimal_places=2)
    precio_compra = models.DecimalField(max_digits=10, decimal_places=2)
    cantidad_stock = models.IntegerField()
    unidades_paquete = models.IntegerField()
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, related_name='presentaciones')
    ventas = models.ManyToManyField('Ventas', through='PresentacionHasVentas', related_name='presentaciones')
    activo = models.BooleanField(default=True)

    def __str__(self):
        return f"{self.producto.nombre} - {self.nombre}"

class Proveedor(models.Model):
    nombre = models.CharField(max_length=45)
    direccion = models.CharField(max_length=45)
    telefono = models.CharField(max_length=45)
    email = models.CharField(max_length=45)
    producto_provedor = models.CharField(max_length=45)

class Compra(models.Model):
    fecha_compra = models.DateTimeField()
    descripcion_producto = models.CharField(max_length=45)
    cantidad_producto = models.IntegerField()

class ProductoHasCompra(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, related_name='producto_compras')
    compra = models.ForeignKey(Compra, on_delete=models.CASCADE, related_name='producto_compras')

class ProductoHasProveedor(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE, related_name='producto_proveedores')
    proveedor = models.ForeignKey(Proveedor, on_delete=models.CASCADE, related_name='producto_proveedores')

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
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE, related_name='ventas')

class PresentacionHasVentas(models.Model):
    presentacion = models.ForeignKey(Presentacion, on_delete=models.CASCADE, related_name='presentacion_ventas')
    ventas = models.ForeignKey(Ventas, on_delete=models.CASCADE, related_name='presentacion_ventas')
    

