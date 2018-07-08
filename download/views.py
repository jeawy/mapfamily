from django.shortcuts import get_object_or_404,render
from django.http import HttpResponse
from django.template import RequestContext, loader
from django.http import Http404
from django import forms
import requests
import json
import sys
import textwrap
from django.forms.models import model_to_dict
from django.utils import timezone
from django.http import HttpResponseRedirect
from django.shortcuts import render_to_response
from django.core.urlresolvers import reverse
import tempfile
import shutil
from django.views.decorators.csrf import csrf_exempt
import os
from os import listdir
from os.path import isfile, join
import zipfile,tempfile
import pdb
import shutil #copy files
from django.conf import settings
from django.db.models import Q
from django.core import urlresolvers
from django.core.servers.basehttp import FileWrapper
import smtplib 
import urllib2,urllib
from base64 import b64encode
  
from django.core.serializers.json import DjangoJSONEncoder
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import redirect

import random
import string


def vedio(request): 
    temp_vedio     = 'tmp//tog-16-0081-video.mp4'
     
    temp_vedio    = os.path.join(settings.MEDIA_ROOT, temp_vedio)
    

    if os.path.isfile(temp_vedio):
        file_route = temp_vedio
        try:
            wrapper     = FileWrapper(file(file_route, 'rb'))
        except IOError, e:
            return HttpResponse(e)
        response    = HttpResponse(wrapper,content_type='application/octet-stream')
        response['Content-Disposition'] = 'attachment; filename=%s' % os.path.basename(file_route)
        response['Content-Length']      = os.path.getsize(file_route)
        return response
    else:
        return HttpResponse('Cannot find the vedio.: '+temp_vedio)
    #file_route     = filedb.docfile.name

    

def view_vedio(request):
    return render(request, 'download/view.html', {})
