from django.urls import include, path

from books import views

urlpatterns = (
    path("catalog/", views.BooksCatalogView.as_view(), name="catalog"),
)
