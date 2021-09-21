from django.urls import path
from .views import ListSongsView, health


urlpatterns = [
    path('songs/', ListSongsView.as_view(), name="songs-all"),
    path('health/', health, name="health")

]
