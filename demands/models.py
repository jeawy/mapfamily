# -*- coding:utf-8 -*-
from django.db import models

class Demand(models.Model):
    name = models.CharField(u'姓名',max_length= 1024, default='')
    qq = models.CharField( u'QQ',max_length= 1024,default='')
    phone = models.CharField( u'电话',max_length= 1024,default='')
    email = models.CharField( u'Email',max_length= 1024,default='')
    msg = models.TextField(default='')
    date = models.DateTimeField(auto_now_add=True)
