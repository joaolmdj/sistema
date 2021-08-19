# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.db.models.query import QuerySet


class Clientes(models.Model):
    id_cliente = models.AutoField(primary_key=True)
    nome_cliente = models.CharField(max_length=30)
    cpf = models.CharField(max_length=15)
    rg = models.CharField(max_length=15, blank=True, null=True)
    email = models.CharField(max_length=50)
    telefone = models.CharField(max_length=15, blank=True, null=True)
    celular = models.CharField(max_length=17, blank=True, null=True)
    endereco = models.CharField(max_length=60, blank=True, null=True)
    complemento = models.CharField(max_length=50, blank=True, null=True)
    cidade = models.CharField(max_length=30, blank=True, null=True)
    estado = models.CharField(max_length=30, blank=True, null=True)
    cep = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'clientes'
        

class Pedidos(models.Model):
    id_cli = models.IntegerField(primary_key=True)
    nome_cli = models.CharField(max_length=30)
    id_produto = models.IntegerField()
    nome_produto = models.CharField(max_length=50)
    valor_produto = models.DecimalField(max_digits=10, decimal_places=2)
    quantidade_produto = models.SmallIntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pedidos'


class Produtos(models.Model):
    id_item = models.AutoField(primary_key=True)
    nome_item = models.CharField(max_length=50)
    preco_item = models.DecimalField(max_digits=10, decimal_places=2)
    quantidade_item = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'produtos'
