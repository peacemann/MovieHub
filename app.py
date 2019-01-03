from flask import Flask, render_template, redirect, url_for, request, session
from flask_bootstrap import Bootstrap
from flask_wtf import FlaskForm 
from wtforms import StringField, PasswordField, BooleanField
from wtforms.validators import InputRequired, Email, Length
from flask_sqlalchemy  import SQLAlchemy
from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
from sqlalchemy.sql import func


app = Flask(__name__)
app.config['SECRET_KEY'] = 'Thisissupposedtobesecret!'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:root@localhost/moviedatabase'
bootstrap = Bootstrap(app)
db = SQLAlchemy(app)
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'


class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(15), unique=True)
    email = db.Column(db.String(50), unique=True)
    password = db.Column(db.String(80))

class Rate(db.Model):
    userid = db.Column(db.Integer, primary_key=True, nullable=False)
    movieid = db.Column(db.Integer, primary_key=True, nullable=False)
    rate = db.Column(db.Float, nullable=False)

class Movie(db.Model):
    id = db.Column(db.Integer, primary_key=True, nullable=False)
    name = db.Column(db.String(200) )
    genre = db.Column(db.String(200) )
    link = db.Column(db.String(100) )
    overview = db.Column(db.String(500) )
    poster = db.Column(db.String(50) )
    year = db.Column(db.String(20))
    runtime = db.Column(db.String(20) )

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

class LoginForm(FlaskForm):

    email = StringField('email', validators=[InputRequired(), Email(message='Invalid email'), Length(max=50)])
    password = PasswordField('password', validators=[InputRequired(), Length(min=8, max=80)])
    remember = BooleanField('remember me')

class RegisterForm(FlaskForm):
    email = StringField('email', validators=[InputRequired(), Email(message='Invalid email'), Length(max=50)])
    password = PasswordField('password', validators=[InputRequired(), Length(min=8, max=80)])


@app.route('/')
def index():
    if 'userid' in session:
        return redirect(url_for('allmovies'))
    return redirect(url_for('login'))

@app.route('/login', methods=['GET', 'POST'])
def login():
    print("works")
    form = LoginForm()

    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        print(form.email.data)
        if user:
            if check_password_hash(user.password, form.password.data):
                login_user(user, remember=form.remember.data)
                session["userid"] = user.id
                return redirect(url_for('index'))

        #return '<h1>Invalid username or password</h1>'

    return render_template('login.html', form=form)

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    form = RegisterForm()

    if form.validate_on_submit():
        hashed_password = generate_password_hash(form.password.data, method='sha256')
        new_user = User(email=form.email.data, password=hashed_password)
        
        db.session.add(new_user)
        db.session.commit()


        #add session
        user = User.query.filter_by(email=form.email.data).first()
        session["userid"] = user.id
        return redirect(url_for('index'))

        #return '<h1>New user has been created!</h1>'


    return render_template('signup.html', form=form)

@app.route('/allmovies')
@login_required
def allmovies():


    
    movies = Movie.query.all()

    
    return render_template('index.html', movies=movies)




@app.route('/avg')
@login_required
def avg():


    movies = Movie.query.all()



    mylist=[]
    i=0
    for movie in movies:
        averageRate = db.session.query(func.avg(Rate.rate).label('average')).filter(Rate.movieid==movie.id).first()
        if averageRate[0] is not None:
            mylist.append([movie,averageRate[0]])

    
    def getKey(item):
        return item[1]

    mylist.sort(key = getKey, reverse=True)


    return render_template('rated_movies.html', mylist=mylist)




@app.route('/themovie', methods=['GET', 'POST'])
@login_required
def themovie():

    #getting the GET value
    movie_id = request.args.get("movie_id")
    selected_movie = Movie.query.filter_by(id=movie_id).first()
    
    return render_template('movie.html' , selected_movie=selected_movie)



@app.route('/reviews', methods=['GET', 'POST'])
def reviews():

    rate_amount = request.form.get("rating")
    mymovie = request.args.get("movie_id")


    
    check_rate = Rate.query.filter_by(userid=session["userid"], movieid=mymovie).first()
    
    if check_rate:
        check_rate.rate = rate_amount
        db.session.commit()
        return redirect(url_for('index'))
    

    new_rate = Rate(userid=session["userid"], movieid=mymovie, rate=rate_amount)
    db.session.add(new_rate)
    db.session.commit()
    
    return redirect(url_for('index'))

@app.route('/logout')
@login_required
def logout():
    logout_user()
    session.pop('userid', None)
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True)
