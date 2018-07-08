from django.shortcuts import render
from django.http import HttpResponse
import pdb
import hashlib
import reply
import receive
from django.views.decorators.csrf import csrf_exempt
import requests
from basic import Basic


@csrf_exempt
def index(request):
    
    if request.method == 'GET':
        signature = request.GET['signature']
        timestamp = request.GET['timestamp']
        nonce = request.GET['nonce']
        echostr = request.GET['echostr']
        token = "hiwx" 

        list = [token, timestamp, nonce]
        list.sort()
        sha1 = hashlib.sha1()
        map(sha1.update, list)
        hashcode = sha1.hexdigest()
        print "handle/GET func: hashcode, signature: ", hashcode, signature
        if hashcode == signature:
            return HttpResponse(echostr)
        return HttpResponse('get wx')
    elif request.method == 'POST':
        webData = request.read() 
        
        recMsg = receive.parse_xml(webData)
        print webData
        print recMsg
        if isinstance(recMsg, receive.Msg) and recMsg.MsgType == 'text':
            print 'isinstance == true'
            toUser = recMsg.FromUserName
            fromUser = recMsg.ToUserName
            print fromUser
            content = "miss you. Waiting for you so long years..."
            replyMsg = reply.TextMsg(toUser, fromUser, content) 
            basic = Basic()
            tocken = basic.get_access_token()
            userinfo = requests.get('https://api.weixin.qq.com/cgi-bin/user/info?access_token='+tocken+'&openid='+toUser+'&lang=zh_CN')
            print userinfo.text
            
            return HttpResponse(replyMsg.send(), content_type='text/xml')
        else:
            print 'isinstance == false'
            return HttpResponse("success")