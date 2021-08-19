from django import forms
from django.forms import ModelForm, fields
from .models import Clientes, Pedidos


class ClientesForm(forms.ModelForm):
    class Meta:
        model = Clientes
        fields = ['nome_cliente','cpf', 'rg', 'email', 'telefone', 'telefone', 'celular', 'endereco', 'complemento', 'cidade', 'estado', 'cep',]

        widgets = { 'cpf': forms.TextInput(attrs={'data-mask':"000.000.000-00"}),
                    'rg': forms.TextInput(attrs={'data-mask':"00.000.000-0"}),
                    'telefone': forms.TextInput(attrs={'data-mask':"(00) 0000-0000"}),
                    'celular': forms.TextInput(attrs={'data-mask':"(00) 0 0000-0000"}),
                    'cep': forms.TextInput(attrs={'data-mask':"00000-000"}),
}

class PedidosForm(forms.ModelForm):
    class Meta:
        model = Pedidos
        fields =  ['id_cli','nome_cli','id_produto','nome_produto','valor_produto','quantidade_produto',]
