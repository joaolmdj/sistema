from django import forms
from django.forms import ModelForm
from .models import Clientes


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