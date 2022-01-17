from django.views.generic import TemplateView


class HomeView(TemplateView):
    template_name = "pages/home.html"


class PageOneView(TemplateView):
    template_name = "pages/one.html"


class PageTwoView(TemplateView):
    template_name = "pages/two.html"
