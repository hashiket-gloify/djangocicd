from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse


# Create your views here.
def index(request):
    return HttpResponse("Hello, World!, Here I am!!!!!", content_type="text/plain")
