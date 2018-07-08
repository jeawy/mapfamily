from django.shortcuts import render
 
def demo2(request):
    return render(request, 'demo2.html', {})
    
def demo1(request):
    return render(request, 'demo1.html', {})
