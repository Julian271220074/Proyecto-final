from django.shortcuts import render, redirect, get_object_or_404
from .models import Compra, Ventas
from .forms import CompraForm, VentaForm

def lista_compras(request):
    compras = Compra.objects.all()
    return render(request, 'compras/listar_compra.html', {'compras': compras})

def crear_compra(request):
    if request.method == 'POST':
        form = CompraForm(request.POST)
        if form.is_valid():
            compra = form.save(commit=False)
            compra.total = compra.cantidad * compra.precio_unitario
            compra.save()
            return redirect('lista_compras')
    else:
        form = CompraForm()
    return render(request, 'compras/crear_compra.html', {'form': form})

def editar_compra(request, pk):
    compra = get_object_or_404(Compra, pk=pk)
    if request.method == 'POST':
        form = CompraForm(request.POST, instance=compra)
        if form.is_valid():
            compra = form.save(commit=False)
            compra.total = compra.cantidad * compra.precio_unitario
            compra.save()
            return redirect('lista_compras')
    else:
        form = CompraForm(instance=compra)
    return render(request, 'compras/editar_compra.html', {'form': form})

def eliminar_compra(request, pk):
    compra = get_object_or_404(Compra, pk=pk)
    if request.method == 'POST':
        compra.delete()
        return redirect('lista_compras')
    return render(request, 'compras/eliminar_compra.html', {'compra': compra})





def listar_venta(request):
    ventas = Ventas.objects.all()
    return render(request, 'ventas/listar_venta.html', {'ventas': ventas})

def crear_venta(request):
    if request.method == "POST":
        form = VentaForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('listar_venta')
    else:
        form = VentaForm()
    return render(request, 'ventas/crear_venta.html', {'form': form})

def editar_venta(request, pk):
    venta = get_object_or_404(Ventas, pk=pk)
    if request.method == "POST":
        form = VentaForm(request.POST, instance=venta)
        if form.is_valid():
            form.save()
            return redirect('listar_venta')
    else:
        form = VentaForm(instance=venta)
    return render(request, 'ventas/editar_venta.html', {'form': form})

def eliminar_venta(request, pk):
    venta = get_object_or_404(Ventas, pk=pk)
    if request.method == "POST":
        venta.delete()
        return redirect('listar_venta')
    return render(request, 'ventas/eliminar_venta.html', {'venta': venta})

