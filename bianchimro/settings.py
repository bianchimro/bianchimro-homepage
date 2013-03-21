# Django settings for bianchimro project.
import os
gettext = lambda s: s
PROJECT_PATH = os.path.abspath(os.path.dirname(__file__))

DEBUG = True
TEMPLATE_DEBUG = DEBUG

ADMINS = (
    # ('Your Name', 'your_email@example.com'),
)

MANAGERS = ADMINS

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2', # Add 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'bianchimro_bianchimro',                      # Or path to database file if using sqlite3.
        'USER': 'maurobianchi_webuser',                      # Not used with sqlite3.
        'PASSWORD': 'chocos_123456',                  # Not used with sqlite3.
        'HOST': '',                      # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
    }
}

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# On Unix systems, a value of None will cause Django to use the same
# timezone as the operating system.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'America/Chicago'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-us'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale
USE_L10N = True

# Absolute filesystem path to the directory that will hold user-uploaded files.
# Example: "/home/media/media.lawrence.com/media/"
MEDIA_ROOT = os.path.join(PROJECT_PATH, "media")

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash.
# Examples: "http://media.lawrence.com/media/", "http://example.com/media/"
MEDIA_URL = "/media/"

# Absolute path to the directory static files should be collected to.
# Don't put anything in this directory yourself; store your static files
# in apps' "static/" subdirectories and in STATICFILES_DIRS.
# Example: "/home/media/media.lawrence.com/static/"
STATIC_ROOT = os.path.join(PROJECT_PATH, "static.collected")

# URL prefix for static files.
# Example: "http://media.lawrence.com/static/"
STATIC_URL = '/static/'

# URL prefix for admin static files -- CSS, JavaScript and images.
# Make sure to use a trailing slash.
# Examples: "http://foo.com/static/admin/", "/static/admin/".
ADMIN_MEDIA_PREFIX = '/static/admin/'

# Additional locations of static files
STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    os.path.join(PROJECT_PATH, 'static/'),
)

# List of finder classes that know how to find static files in
# various locations.
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
#    'django.contrib.staticfiles.finders.DefaultStorageFinder',
)

# Make this unique, and don't share it with anybody.
SECRET_KEY = 'f6lnv$(f@ui%*l1^t*s%#_u=zxykc&-f8h^$hyw-c@sf0j$a^f'

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
    'django.template.loaders.app_directories.load_template_source',
    
#     'django.template.loaders.eggs.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'cms.middleware.multilingual.MultilingualURLMiddleware',
    'cms.middleware.page.CurrentPageMiddleware',
    'cms.middleware.user.CurrentUserMiddleware',
    'cms.middleware.toolbar.ToolbarMiddleware',
)

ROOT_URLCONF = 'bianchimro.urls'

TEMPLATE_CONTEXT_PROCESSORS = (
    'django.contrib.auth.context_processors.auth',
    'django.core.context_processors.i18n',
    'django.core.context_processors.request',
    'django.core.context_processors.media',
    'django.core.context_processors.static',
    'cms.context_processors.media',
    'sekizai.context_processors.sekizai',
)
TEMPLATE_DIRS = (
    # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    os.path.join(PROJECT_PATH, "templates"),
    os.path.join(PROJECT_PATH, "templates/cms"),
)


INSTALLED_APPS = (

    'admin_tools',
    'admin_tools.theming',
    'admin_tools.menu',
    'admin_tools.dashboard',

    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    # Uncomment the next line to enable the admin:
    'django.contrib.admin',
    # Uncomment the next line to enable admin documentation:
    'django.contrib.admindocs',
    
    #cms related
    'cms',
    'mptt',
    'menus',
    'south',
    'sekizai',
    
    'tinymce',
    
    #the following plugins should be disabled, if using filer plugins
    'cms.plugins.file',
    'cms.plugins.picture',
    'cms.plugins.teaser',
    'cms.plugins.video',
    
    'cms.plugins.flash',
    'cms.plugins.googlemap',
    'cms.plugins.link',
    'cms.plugins.snippet',
    'cms.plugins.text',

    'cms.plugins.twitter',
    
    'tagging',
    'zinnia',
    'cmsplugin_zinnia',
    'django.contrib.comments',
    
    #imagestore
    'imagestore',
    'sorl.thumbnail',
    'imagestore.imagestore_cms',
    
)



#cms templates for django-cms
CMS_TEMPLATES = (
    ('base_page.html', 'Base page'),
    ('template_single_column.html', 'Single column'),
    ('template_2_columns_left_sidebar.html', 'Two columns - sidebar left'),
    ('template_2_columns_left_sidebar_gallery.html', 'Two columns - sidebar left with gallery'),

)

#This setting enables permissions on cms pages
CMS_PERMISSION = True
#Enables additional "soft root" setting in cms
#TODO: check if it is useful
#CMS_SOFTROOT = True

LANGUAGES = [
    ('it', 'Italiano'),
    ('en', 'English'),
]


#cms default editor config -- but probably we'll stick to tinymce ..
WYM_TOOLS = ",\n".join([
    "{'name': 'Bold', 'title': 'Strong', 'css': 'wym_tools_strong'}",
    "{'name': 'Italic', 'title': 'Emphasis', 'css': 'wym_tools_emphasis'}",
    "{'name': 'Superscript', 'title': 'Superscript', 'css': 'wym_tools_superscript'}",
    "{'name': 'Subscript', 'title': 'Subscript', 'css': 'wym_tools_subscript'}",
    "{'name': 'InsertOrderedList', 'title': 'Ordered_List', 'css': 'wym_tools_ordered_list'}",
    "{'name': 'InsertUnorderedList', 'title': 'Unordered_List', 'css': 'wym_tools_unordered_list'}",
    "{'name': 'Indent', 'title': 'Indent', 'css': 'wym_tools_indent'}",
    "{'name': 'Outdent', 'title': 'Outdent', 'css': 'wym_tools_outdent'}",
    "{'name': 'Undo', 'title': 'Undo', 'css': 'wym_tools_undo'}",
    "{'name': 'Redo', 'title': 'Redo', 'css': 'wym_tools_redo'}",
    "{'name': 'Paste', 'title': 'Paste_From_Word', 'css': 'wym_tools_paste'}",
    "{'name': 'ToggleHtml', 'title': 'HTML', 'css': 'wym_tools_html'}",
    "{'name': 'CreateLink', 'title': 'Link', 'css': 'wym_tools_link'}",
    "{'name': 'Unlink', 'title': 'Unlink', 'css': 'wym_tools_unlink'}",
    "{'name': 'InsertImage', 'title': 'Image', 'css': 'wym_tools_image'}",
    "{'name': 'InsertTable', 'title': 'Table', 'css': 'wym_tools_table'}",
    "{'name': 'Preview', 'title': 'Preview', 'css': 'wym_tools_preview'}",
])

#this seems to break wym skin
#WYM_STYLES = '/static/bootstrap/css/bootstrap.css'

#if using tinymce
CMS_USE_TINYMCE = True

TINYMCE_DEFAULT_CONFIG = {
    'plugins': "table,spellchecker,paste,searchreplace",
    'theme': "advanced",
    'skin' : "o2k7",
    'width' : '100%',
    'height' : '500px',
    'theme_advanced_toolbar_location' : "top",
    'theme_advanced_toolbar_align' : "left",
    'content_css' : "/static/bootstrap/css/bootstrap.css",
}


#blog stuff
ZINNIA_ENTRY_BASE_MODEL = 'cmsplugin_zinnia.placeholder.EntryPlaceholder'

# A sample logging configuration. The only tangible logging
# performed by this configuration is to send an email to
# the site admins on every HTTP 500 error.
# See http://docs.djangoproject.com/en/dev/topics/logging for
# more details on how to customize your logging configuration.
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'class': 'django.utils.log.AdminEmailHandler'
        }
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}


#imagestore
IMAGESTORE_SHOW_USER = False
