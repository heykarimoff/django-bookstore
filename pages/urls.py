from django.urls import include, path

from pages import views

urlpatterns = (
    path("", views.HomeView.as_view(), name="home"),
    path("one", views.PageOneView.as_view(), name="one"),
    path("two", views.PageTwoView.as_view(), name="two"),
)