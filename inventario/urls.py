from django.urls import path
from . import views
from django.conf import settings
from django.contrib.staticfiles.urls import static


urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('productos/', views.lista_productos, name='lista_productos'),
    path('producto/nuevo/', views.crear_producto, name='crear_producto'),
    path('producto/<int:pk>/editar/', views.actualizar_producto, name='actualizar_producto'),
    path('producto/<int:pk>/eliminar/', views.eliminar_producto, name='eliminar_producto'),
    path('tipos/', views.lista_tipo_productos, name='lista_tipo_productos'),
    path('tipo/nuevo/', views.crear_tipo_producto, name='crear_tipo_producto'),
    path('tipo/<int:pk>/editar/', views.actualizar_tipo_producto, name='actualizar_tipo_producto'),
    path('tipo/<int:pk>/eliminar/', views.eliminar_tipo_producto, name='eliminar_tipo_producto'),
]

