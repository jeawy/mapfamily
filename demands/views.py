# -*- coding:utf-8 -*-
import threading
import pdb

from django.shortcuts import render
from django.http import HttpResponse
from .models import Demand
from django.views.decorators.csrf import csrf_exempt


from basedatas.e_mail import EmailEx 

def send_thread(Subject, content,receiver):
    try:
        email_result = EmailEx.send_html_email(Subject,content,receiver)

    except Exception, e:
        pass

@csrf_exempt
def create(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        qq = request.POST['qq']
        phone = request.POST['phone']
        msg = request.POST['msg']
        d = Demand(name = name, email = email, qq=qq, phone=phone,
        msg=msg)
        d.save()

        html ="""
                 <p>姓名:{0}</p>
                 <p>电子邮件:{1}</p>
                 <p>QQ号码:{2}</p>
                 <p>电话号码:{3}</p> 
                 <pre>{4}</pre> 
        """ 
        content = html.format(name.encode('utf-8'), email, qq, phone, msg.encode('utf-8'))
        print content
        subject= u'新需求来啦'
        receiver = '281475120@163.com' 
   
        threading.Thread(target=send_thread, args=(subject, content, receiver)).start()
 
    return HttpResponse('ok')




def list(request):
    ds = Demand.objects.all()
    
    return HttpResponse('ok')