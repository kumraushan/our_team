from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import employee_details

# Create your views here.
def home(request):
    employees = employee_details.objects.all()

    return render (request,'index.html',{'persons':employees})