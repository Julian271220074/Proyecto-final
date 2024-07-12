# Generated by Django 5.0.7 on 2024-07-12 20:11

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Compra',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_compra', models.DateTimeField()),
                ('descripcion_producto', models.CharField(max_length=45)),
                ('cantidad_producto', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Marca',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('logo_Tipo', models.BinaryField()),
                ('nombre', models.CharField(max_length=45)),
            ],
        ),
        migrations.CreateModel(
            name='Proveedor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=45)),
                ('direccion', models.CharField(max_length=45)),
                ('telefono', models.CharField(max_length=45)),
                ('email', models.CharField(max_length=45)),
                ('producto', models.CharField(max_length=45)),
            ],
        ),
        migrations.CreateModel(
            name='TipoProducto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=45)),
                ('descripcion', models.CharField(max_length=45)),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo_documento', models.CharField(max_length=45)),
                ('nombre', models.CharField(max_length=45)),
                ('apellido', models.CharField(max_length=45)),
                ('telefono', models.CharField(max_length=11)),
            ],
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo_barras', models.CharField(max_length=100)),
                ('nombre', models.CharField(max_length=100)),
                ('descripcion', models.CharField(max_length=100)),
                ('marca', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.marca')),
                ('tipo_producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.tipoproducto')),
            ],
        ),
        migrations.CreateModel(
            name='Presentacion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=45)),
                ('descripcion', models.CharField(max_length=45)),
                ('precio_venta', models.FloatField()),
                ('precio_compra', models.FloatField()),
                ('cantidad_stock', models.IntegerField()),
                ('unidades_paquete', models.IntegerField()),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.producto')),
            ],
        ),
        migrations.CreateModel(
            name='ProductoHasCompra',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('compra', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.compra')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.producto')),
            ],
        ),
        migrations.CreateModel(
            name='ProductoHasProveedor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.producto')),
                ('proveedor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.proveedor')),
            ],
        ),
        migrations.CreateModel(
            name='Ventas',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('saldo_inicial', models.FloatField()),
                ('saldo_actual', models.FloatField()),
                ('ventas_realizadas', models.IntegerField()),
                ('estado', models.CharField(max_length=45)),
                ('fecha_apertura', models.DateTimeField()),
                ('fecha_cierre', models.DateTimeField()),
                ('usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.usuario')),
            ],
        ),
        migrations.CreateModel(
            name='PresentacionHasVentas',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('presentacion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.presentacion')),
                ('ventas', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.ventas')),
            ],
        ),
    ]
