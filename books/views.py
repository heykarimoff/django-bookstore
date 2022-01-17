from django.views.generic import TemplateView


class BooksCatalogView(TemplateView):
    template_name = "books/catalog.html"
