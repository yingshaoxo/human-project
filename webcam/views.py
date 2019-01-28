from django.views.generic import TemplateView

# Create your views here.
class WebcamView(TemplateView):
    template_name = 'webcam/index.html'
