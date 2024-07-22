from django import forms
from .models import Compra , Ventas

class CompraForm(forms.ModelForm):
    class Meta:
        model = Compra
        exclude = ['fecha', 'total' ]
        



class VentaForm(forms.ModelForm):
    class Meta:
        model = Ventas
        fields = [
            'saldo_inicial', 'saldo_actual', 'ventas_realizadas', 
            'estado', 'fecha_apertura', 'fecha_cierre', 'usuario'
        ]
