from app.main import bp
from flask import request, render_template, redirect, url_for


@bp.route('/')
def index():
    return render_template('index.html')



