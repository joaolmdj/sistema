from django.core import paginator
from django.http import request
from django.shortcuts import redirect, render, get_object_or_404
from .models import Clientes, Pedidos
from .forms import ClientesForm
from django.contrib import messages
from django.core.paginator import Paginator

# -- Validação de objects --
# Método 404, garante achar object, se não, mostra erro 404 para o usuário
#

def home(request):
    return render(request, 'index.html')


def ClienteList(request):
    ClienteList = Clientes.objects.all()

    paginator = Paginator(ClienteList, 5)

    page = request.GET.get('page')

    ClienteList = paginator.get_page(page)

    return render(request, 'clientes/clientelist.html', {'ClienteList': ClienteList})


def PedidosList(request, id):
    PedidosList = get_object_or_404(Clientes, pk=id)
    PedidosList = Pedidos.objects.all()

    return render(request, 'pedidos/pedidoslist.html', {'PedidosList': PedidosList})


def ClienteAdd(request):
    form = ClientesForm(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('/')

    context = {
        'form' : form
    }

    return render(request, 'clientes/clienteadd.html', context)


def PedidosAdd(request):
    form = ClientesForm(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('/')

    context = {
        'form' : form
    }

    return render(request, 'cliente/pedidosadd.html', context)


def ClienteEdit(request, id):
    ClienteEdit = get_object_or_404(Clientes, pk=id)
    form = ClientesForm(instance=ClienteEdit)

    if(request.method == 'POST'):
        form = ClientesForm(request.POST, instance=ClienteEdit)

        if(form.is_valid()):
            ClienteEdit.save()
            return redirect('/')
        else:
            return render(request, 'clientes/clienteedit.html', {'form': form,'ClienteEdit': ClienteEdit})
    else:
        return render(request, 'clientes/clienteedit.html', {'form': form,'ClienteEdit': ClienteEdit})


def ClienteDelete(request, id):
    ClienteDelete = get_object_or_404(Clientes, pk=id)
    ClienteDelete.delete()

    messages.info(request, 'Cliente deletado com sucessso!')

    return redirect('/')
