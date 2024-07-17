from django.urls import path
from . import views
from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('marcas/registrar/', views.registrar_marca, name='registrar_marca'),
    path('marcas/', views.listar_marcas, name='listar_marcas'),
    path('marcas/consultar/', views.consultar_marca, name='consultar_marca'),
    path('marcas/<int:marca_id>/activar-desactivar/', views.activar_desactivar_marca, name='activar_desactivar_marca'),
    path('presentaciones/registrar/', views.registrar_presentacion, name='registrar_presentacion'),
    path('presentaciones/', views.listar_presentaciones, name='listar_presentaciones'),
    path('presentaciones/buscar/', views.buscar_presentacion, name='buscar_presentacion'),
    path('presentaciones/<int:presentacion_id>/activar-desactivar/', views.activar_desactivar_presentacion, name='activar_desactivar_presentacion'),
]

#PARA EL DASHBOARD
from django.urls import path
from . import views

urlpatterns = [
    path('buscar_presentacion/', views.buscar_presentacion, name='buscar_presentacion'),
    path('consultar_marca/', views.consultar_marca, name='consultar_marca'),
    path('listar_marcas/', views.listar_marcas, name='listar_marcas'),
    path('listar_presentaciones/', views.listar_presentaciones, name='listar_presentaciones'),
    path('registrar_marca/', views.registrar_marca, name='registrar_marca'),
    path('registrar_presentacion/', views.registrar_presentacion, name='registrar_presentacion'),
    path('', views.dashboard, name='dashboard')
]


