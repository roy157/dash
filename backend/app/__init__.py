from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

db = SQLAlchemy()
migrate = Migrate()

def create_app(config_class='config.Config'):
    app = Flask(__name__)
    app.config.from_object(config_class)
    
    db.init_app(app)
    migrate.init_app(app, db)
    
    # Importa y registra el blueprint
    from app.routes import bp
    app.register_blueprint(bp, url_prefix='/api')  # Asegúrate de este prefijo
    
    # Ruta de prueba en la raíz
    @app.route('/')
    def index():
        return """
        <h1>API del Dashboard</h1>
        <p>Endpoints disponibles:</p>
        <ul>
            <li><a href="/api/dashboard">/api/dashboard</a></li>
            <li><a href="/api/productos">/api/productos</a></li>
        </ul>
        """
    
    return app