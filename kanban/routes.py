from kanban import *
from flask import render_template

@app.route('/')
@app.route('/index')
def index():
    db = get_db()
    cur = db.execute('select name, description from boards order by id desc')
    entries = cur.fetchall()
    return  render_template('index.html', entries=entries)
