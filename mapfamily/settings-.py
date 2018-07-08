"""
Django settings for  project.

For more information on this file, see
https://docs.djangoproject.com/en/1.7/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.7/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
import logging
BASE_DIR = os.path.dirname(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.7/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'v3fa2_fzr80^e89cd%dbz(c52dh-x(vo$s80-k%harsgjqrha8'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False
LOGIN_REDIRECT_URL = '/' 

ALLOWED_HOSTS = ['*','.mapfamily.com', 'localhost', '127.0.0.1']

#LOCATION = {"US": ["US1", "US2"], "CN": ["CN1", "CN2"]}
LOCATION = {"CN": ["CN1", "CN2"]} 
# Application definition

INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',  
    'ckeditor',
    'category',
    'product',
    'basedatas',
    'ticket',
    'task',
    'logsys',
    'bill',
    'administration',
    'heartbeat',
    'mailer',
    'statistics',
    'pic' ,
    'good',
    'comment',
    'msg',
    'kb',
    'blocks',
    'log',
    'download',
    'tools',
    'demo',
    'wx',
    'demands',
)


MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'mapfamily.urls'

WSGI_APPLICATION = 'mapfamily.wsgi.application'
'''
AUTHENTICATION_BACKENDS = (
    'mapfamily.user_backend.EmailBackend',
 )
'''
# Database
# https://docs.djangoproject.com/en/1.7/ref/settings/#databases


SOCIALOAUTH_SITES = ( 
      ('qq', 'socialoauth.sites.qq.QQ', u'QQ',
        {
          'redirect_uri': 'http://www.map2family.com/user/portrait/',
          'client_id': '101286196',
          'client_secret': 'fbb548eb2652adf03558e435ffb83c08',
        }
    ),
)


DATABASES = {
    'default': {
        #''''
        #'ENGINE': 'django.db.backends.sqlite3',
        #'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
        #'''
        'ENGINE': 'django.db.backends.mysql',
        'OPTIONS': {'charset': 'utf8mb4'},
        'NAME': 'mapfamily',
        'USER': 'root',
        'PASSWORD': 'sqlroot',
        'HOST': 'localhost',   # Or an IP Address that your DB is hosted on
        'PORT': '3306',
    }
}



CKEDITOR_UPLOAD_PATH = 'images/'
CKEDITOR_CONFIGS = {
    'default': { 
        # 'skin': 'office2013',
        'toolbar_Basic': [
            ['Source', '-', 'Bold', 'Italic']
        ],
        'toolbar_YourCustomToolbarConfig': [
            {'name': 'document', 'items': ['Source', '-', 'Save', 'NewPage', 'Preview', 'Print', '-', 'Templates']},
            {'name': 'clipboard', 'items': ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']},
            {'name': 'editing', 'items': ['Find', 'Replace', '-', 'SelectAll']},
            {'name': 'forms',
             'items': ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton',
                       'HiddenField']},
            '/',
            {'name': 'basicstyles',
             'items': ['Font','FontSize','Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat']},
            {'name': 'paragraph',
             'items': ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-',
                       'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl',
                       'Language']},
            {'name': 'links', 'items': ['Link', 'Unlink', 'Anchor']},
            {'name': 'insert',
             'items': ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe']},
            '/',
            {'name': 'styles', 'items': ['Styles', 'Format', 'Font', 'FontSize']},
            {'name': 'colors', 'items': ['TextColor', 'BGColor']},
            {'name': 'tools', 'items': ['Maximize', 'ShowBlocks']},
            {'name': 'about', 'items': ['About']},
            '/',  # put this to force next toolbar on new line
            {'name': 'yourcustomtools', 'items': [
                # put the name of your editor.ui.addButton here
                'Preview',  
            ]},
        ],
        'toolbar': 'YourCustomToolbarConfig',  # put selected toolbar config here
        # 'toolbarGroups': [{ 'name': 'document', 'groups': [ 'mode', 'document', 'doctools' ] }],
        # 'height': 291,
        # 'width': '100%',
        # 'filebrowserWindowHeight': 725,
        # 'filebrowserWindowWidth': 940,
        # 'toolbarCanCollapse': True,
        # 'mathJaxLib': '#cdn.mathjax.org/mathjax/2.2-latest/MathJax.js?config=TeX-AMS_HTML',
        'tabSpaces': 4,
        'extraPlugins': ','.join([
            'uploadimage', # the upload image feature
            # your extra plugins here
            'font',
            'autolink',
            'autoembed',
             
            'embedsemantic',
            'autogrow',
            # 'devtools',
            'widget',
            'lineutils',
            'clipboard',
            'dialog',
            'dialogui',
            'elementspath'
        ]),
    }
}



# Internationalization
# https://docs.djangoproject.com/en/1.7/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'Asia/Shanghai'

USE_I18N = True

USE_L10N = True

USE_TZ = True
 

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.7/howto/static-files/

STATIC_PATH= os.path.join(os.path.dirname(__file__), '../static').replace('\\','/')

#MEDIA_ROOT = os.path.join( BASE_DIR ,'../media').replace('\\','/')
#this is for server settings
MEDIA_ROOT = '/media/' 
MEDIA_URL = '/media/' 

PICTURE_ROOT = os.path.join(MEDIA_ROOT ,'/pic').replace('\\','/') 

STATIC_ROOT = os.path.join(BASE_DIR,'static').replace('\\','/') 
STATIC_URL = '/static/'
SITE_URL =  os.path.join(BASE_DIR,'static/sites.txt').replace('\\','/')
STATICFILES_DIRS = ( 
   os.path.join(BASE_DIR,'mapfamily/static/').replace('\\','/'), 
)

SMTP_SERVER         ='smtp.mxhichina.com' #SMTP server IP address
SMTP_SERVER_USER    ='postmaster@map2family.com'  
SMTP_SERVER_PWD     ='Youxiang889886'  
#SMTP_SERVER ='155.35.71.215' #SMTP server IP address


TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
        'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                "django.core.context_processors.request",                
                "django.core.context_processors.debug",
                "django.core.context_processors.i18n",
                "django.core.context_processors.media",
                "django.core.context_processors.static",
                "django.core.context_processors.tz",
            ],
        },
    },
]

FILE_CHARSET='utf-8'


SUPPORTOR_EMAIL ='postmaster@map2family.com'
APP_WEB_LOGIN_URL ='/login/'
APP_WEB_PC_LOGIN_URL ='/admin/login/'
APP_WEB_HOST_URL ='/'
APP_WEB_URL ='http://www.mapfamily.com/'

CSRF_COOKIE_DOMAIN  = None 


#1 turn on the log switch; 0 turn off the log switch
LOG_SWITCH  =   1
LOG_FILE_DIR =  os.path.join(BASE_DIR,'logsys/logfile').replace('\\','/')
#1 turn on the email switch; 0 turn off the email switch
#if the email swithc turn off, system will not send email any more.
EMAIL_SWITCH  =   True

AUTH_USER_MODEL = 'administration.User'



#log section
log_path = os.path.join(MEDIA_ROOT, 'log')
if not os.path.isdir(log_path):
   os.makedirs(log_path)
   
logging.basicConfig(level=logging.INFO,
                format='%(asctime)s %(filename)s[line:%(lineno)d] [%(levelname)s] %(message)s',
                datefmt='%a, %d %b %Y %H:%M:%S',
                filename= os.path.join(log_path, 'sys.log'),
                filemode='a')
                
                
SYS_LOGGING = logging

FILE_MAX_SIZE = 512*1024 #
FILE_COMPRESSION_RIO = 75 #75%, [0-100]
