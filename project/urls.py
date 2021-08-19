"""project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from app import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.ClienteList, name='ClienteList'),
    path('cliente/<int:id>/', views.PedidosList, name="PedidosList"),
    path('clienteadd/', views.ClienteAdd, name="ClientesAdd"),
    path('clienteedit/<int:id>', views.ClienteEdit, name="ClienteEdit"),
    path('clientedelete/<int:id>', views.ClienteDelete, name="ClienteDelete"),
    path('cliente/<int:id>/pedidosadd/', views.PedidosAdd, name="PedidosAdd"),
]
