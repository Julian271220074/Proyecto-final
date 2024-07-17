from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from .models import Producto, TipoProducto
from .forms import ProductoForm, TipoProductoForm



def inicio(request):
    return render(request, 'paginas/inicio.html')


# Crear producto
def crear_producto(request):
    if request.method == "POST":
        form = ProductoForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('lista_productos')
    else:
        form = ProductoForm()
    return render(request, 'productos/crear_producto.html', {'form': form})

# Leer productos
def lista_productos(request):
    productos = Producto.objects.all()
    return render(request, 'productos/lista_productos.html', {'productos': productos})

# Actualizar producto
def actualizar_producto(request, pk):
    producto = get_object_or_404(Producto, pk=pk)
    if request.method == "POST":
        form = ProductoForm(request.POST, instance=producto)
        if form.is_valid():
            form.save()
            return redirect('lista_productos')
    else:
        form = ProductoForm(instance=producto)
    return render(request, 'productos/actualizar_producto.html', {'form': form})

# Eliminar producto
def eliminar_producto(request, pk):
    producto = get_object_or_404(Producto, pk=pk)
    if request.method == "POST":
        producto.delete()
        return redirect('lista_productos')
    return render(request, 'productos/eliminar_producto.html', {'producto': producto})

# VIEWS TIPO PRODUCTO

# Lista de tipos de productos
def lista_tipo_productos(request):
    tipos = TipoProducto.objects.all()
    return render(request, 'tipos/lista_tipo_productos.html', {'tipos': tipos})

# Crear un nuevo tipo de producto
def crear_tipo_producto(request):
    if request.method == 'POST':
        form = TipoProductoForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('lista_tipo_productos')
    else:
        form = TipoProductoForm()
    return render(request, 'tipos/form_tipo_producto.html', {'form': form})

# Actualizar un tipo de producto existente
def actualizar_tipo_producto(request, pk):
    tipo = get_object_or_404(TipoProducto, pk=pk)
    if request.method == 'POST':
        form = TipoProductoForm(request.POST, instance=tipo)
        if form.is_valid():
            form.save()
            return redirect('lista_tipo_productos')
    else:
        form = TipoProductoForm(instance=tipo)
    return render(request, 'tipos/form_tipo_producto.html', {'form': form})

# Eliminar un tipo de producto existente
def eliminar_tipo_producto(request, pk):
    tipo = get_object_or_404(TipoProducto, pk=pk)
    if request.method == 'POST':
        tipo.delete()
        return redirect('lista_tipo_productos')
    return render(request, 'tipos/confirmar_eliminar_tipo_producto.html', {'tipo': tipo})
