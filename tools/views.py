from django.shortcuts import render
from django.http      import HttpResponse
from django.conf      import settings
from kb.models import Article
from blocks.models import Block
def merge_kb(request):
    kbs = Article.objects.all()
    for kb in kbs:
        if kb.type == 0:
            block = Block.objects.get(pk = 3)
        else:
            block = Block.objects.get(pk = kb.type)
        kb.block = block
        kb.save()
    return HttpResponse('get u')

def update_sites(request):
    kbs = Article.objects.all()
    basedir = settings.SITE_URL
    root = 'http://www.map2family.com/'
    with open(basedir, 'wb+') as f:
        for kb in kbs:
            fstr = 'kb/{0}/kb_detail/\r\n'.format(str(kb.id))
            f.write(root+fstr)
    return HttpResponse('done')