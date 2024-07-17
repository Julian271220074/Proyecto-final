from django.shortcuts import render, redirect, get_object_or_404
from .models import Marca, Presentacion
from .forms import MarcaForm, PresentacionForm

def dashboard(request):
    return render(request, 'paginas/dashboard.html')

def registrar_marca(request):
    if request.method == 'POST':
        form = MarcaForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('listar_marcas')
    else:
        form = MarcaForm()
    return render(request, 'paginas/registrar_marca.html', {'form': form})

def listar_marcas(request):
    marcas = Marca.objects.all()
    return render(request, 'paginas/listar_marcas.html', {'marcas': marcas})

def consultar_marca(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre')
        codigo = request.POST.get('codigo')
        marca = Marca.objects.filter(nombre__icontains=nombre, codigo__icontains=codigo).first()
        return render(request, 'paginas/consultar_marca.html', {'marca': marca})
    return render(request, 'paginas/consultar_marca.html')

def activar_desactivar_marca(request, marca_id):
    marca = get_object_or_404(Marca, id=marca_id)
    marca.activo = not marca.activo
    marca.save()
    return redirect('listar_marcas')

def registrar_presentacion(request):
    if request.method == 'POST':
        form = PresentacionForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('listar_presentaciones')
    else:
        form = PresentacionForm()
    return render(request, 'paginas/registrar_presentacion.html', {'form': form})

def listar_presentaciones(request):
    presentaciones = Presentacion.objects.all()
    return render(request, 'paginas/listar_presentaciones.html', {'presentaciones': presentaciones})

def buscar_presentacion(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre')
        codigo = request.POST.get('codigo')
        descripcion = request.POST.get('descripcion')
        presentaciones = Presentacion.objects.filter(
            producto__nombre__icontains=nombre,
            producto__codigo_barras__icontains=codigo,
            descripcion__icontains=descripcion
        )
        return render(request, 'paginas/buscar_presentacion.html', {'presentaciones': presentaciones})
    return render(request, 'paginas/buscar_presentacion.html')

def activar_desactivar_presentacion(request, presentacion_id):
    presentacion = get_object_or_404(Presentacion, id=presentacion_id)
    presentacion.activo = not presentacion.activo
    presentacion.save()
    return redirect('listar_presentaciones')