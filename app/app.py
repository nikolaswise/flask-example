from flask import Flask, request, render_template

app = Flask(__name__)

@app.route('/')
def hello():
  return render_template('root.html')

@app.route('/form', methods=['POST', 'GET'])
def form():
    form_input = None
    if request.method == 'POST':
        form_input = request.form['userInput']
    return render_template('form.html', input=form_input)

if __name__ == '__main__':
  app.run(host='0.0.0.0', port=8000)
