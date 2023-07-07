from django.urls import path

from api.views.user_views import UserRecordView

urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),
]