from app import create_app, db
from app.models import Producto

app = create_app()

with app.app_context():
    # Verifica si hay productos
    productos = Producto.query.all()
    print(f"Productos encontrados: {len(productos)}")
    
    # Crea un producto de prueba si no hay
    if not productos:
        nuevo = Producto(nombre="Producto Ejemplo", precio=10.5, stock=5)
        db.session.add(nuevo)
        db.session.commit()
        print("¡Producto de prueba creado!")