from django.urls import path

from api.views.user_views import UserRecordView
from api.views.view_user import RegisterAPI

urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),

    path('register/', RegisterAPI.as_view(), name='register'),
   
    
]