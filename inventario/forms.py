from django import forms
from .models import Marca, Presentacion

class MarcaForm(forms.ModelForm):
    class Meta:
        model = Marca
        fields = ['nombre', 'codigo', 'logo_tipo']
        

class PresentacionForm(forms.ModelForm):
    class Meta:
        model = Presentacion
        fields = ['nombre', 'descripcion', 'precio_venta', 'precio_compra', 'cantidad_stock', 'unidades_paquete', 'producto']