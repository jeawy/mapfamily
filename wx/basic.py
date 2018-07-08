# -*- coding: utf-8 -*-
# filename: basic.py
import urllib
import time
import json

class Basic:
    def __init__(self):
        self.__accessToken = ''
        self.__leftTime = 0
        # test accountant
        self.appId = "wxa3056a5cef4ca191"
        self.appSecret = "3c2a47e877d17471038a593ec7707a3d"
        
    def __real_get_access_token(self):
        
        #appId = "wxcd1af54c5dfa9d4a"
        #appSecret = "6c9a6616f34f51193848443fae60cf6d"
        

        

        postUrl = ("https://api.weixin.qq.com/cgi-bin/token?grant_type="
               "client_credential&appid=%s&secret=%s" % (self.appId, self.appSecret))
        urlResp = urllib.urlopen(postUrl)
        urlResp = json.loads(urlResp.read())
        
        self.__accessToken = urlResp['access_token']
        self.__leftTime = urlResp['expires_in']

    def get_access_token(self):
        if self.__leftTime < 10:
            self.__real_get_access_token()
        return self.__accessToken

    def run(self):
        while(True):
            if self.__leftTime > 10:
                time.sleep(2)
                self.__leftTime -= 2
            else:
                self.__real_get_access_token()