from app import create_app, db
from sqlalchemy import inspect

app = create_app()
with app.app_context():
    inspector = inspect(db.engine)
    columns = inspector.get_columns('productos')
    print("Columnas en la tabla 'productos':")
    for col in columns:
        print(f"- {col['name']} ({col['type']})")