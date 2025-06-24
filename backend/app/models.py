from datetime import datetime
from app import db
from werkzeug.security import generate_password_hash, check_password_hash

class Producto(db.Model):
    __tablename__ = 'productos'
    
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(255), nullable=False)
    descripcion = db.Column(db.Text)
    precio = db.Column(db.Numeric(10, 2), nullable=False)
    stock = db.Column(db.Integer)
    fecha_agregado = db.Column(db.DateTime, default=datetime.utcnow)
    categoria_id = db.Column(db.Integer, db.ForeignKey('categorias.id'))
    
    # Relaciones
    categoria = db.relationship('Categoria', back_populates='productos')
    carritos = db.relationship('CarritoProducto', back_populates='producto')
    pedidos = db.relationship('PedidoProducto', back_populates='producto')
    ventas = db.relationship('VentaProducto', back_populates='producto')
    inventarios = db.relationship('Inventario', back_populates='producto')
    reseñas = db.relationship('Reseña', back_populates='producto')

class Categoria(db.Model):
    __tablename__ = 'categorias'
    
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(45), nullable=False)
    descripcion = db.Column(db.Text)
    imagen_url = db.Column(db.String(255))
    
    # Relación
    productos = db.relationship('Producto', back_populates='categoria')

class Cliente(db.Model):
    __tablename__ = 'clientes'
    
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(90), nullable=False)
    email = db.Column(db.String(90), unique=True, nullable=False)
    password = db.Column(db.Text, nullable=False)
    direccion = db.Column(db.String(255))
    telefono = db.Column(db.String(20))
    fecha_registro = db.Column(db.DateTime, default=datetime.utcnow)
    
    # Relaciones
    carritos = db.relationship('Carrito', back_populates='cliente')
    pedidos = db.relationship('Pedido', back_populates='cliente')
    ventas = db.relationship('Venta', back_populates='cliente')
    reseñas = db.relationship('Reseña', back_populates='cliente')

class Carrito(db.Model):
    __tablename__ = 'carritos'
    
    id = db.Column(db.Integer, primary_key=True)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    cliente_id = db.Column(db.Integer, db.ForeignKey('clientes.id'))
    
    # Relaciones
    cliente = db.relationship('Cliente', back_populates='carritos')
    productos = db.relationship('CarritoProducto', back_populates='carrito')

class CarritoProducto(db.Model):
    __tablename__ = 'carritos_productos'
    
    id = db.Column(db.Integer, primary_key=True)
    carrito_id = db.Column(db.Integer, db.ForeignKey('carritos.id'))
    producto_id = db.Column(db.Integer, db.ForeignKey('productos.id'))
    cantidad = db.Column(db.Integer, default=1)
    
    # Relaciones
    carrito = db.relationship('Carrito', back_populates='productos')
    producto = db.relationship('Producto', back_populates='carritos')

class Pedido(db.Model):
    __tablename__ = 'pedidos'
    
    id = db.Column(db.Integer, primary_key=True)
    direccion_envio = db.Column(db.String(255))
    estado = db.Column(db.String(50))  # O db.Enum si prefieres
    total = db.Column(db.Numeric(10, 2))
    fecha_pedido = db.Column(db.DateTime, default=datetime.utcnow)
    cliente_id = db.Column(db.Integer, db.ForeignKey('clientes.id'))
    
    # Relaciones
    cliente = db.relationship('Cliente', back_populates='pedidos')
    productos = db.relationship('PedidoProducto', back_populates='pedido')
    pagos = db.relationship('Pago', back_populates='pedido')

class PedidoProducto(db.Model):
    __tablename__ = 'pedidos_productos'
    
    id = db.Column(db.Integer, primary_key=True)
    cantidad = db.Column(db.Integer)
    precio = db.Column(db.Numeric(10, 2))
    pedido_id = db.Column(db.Integer, db.ForeignKey('pedidos.id'))
    producto_id = db.Column(db.Integer, db.ForeignKey('productos.id'))
    
    # Relaciones
    pedido = db.relationship('Pedido', back_populates='productos')
    producto = db.relationship('Producto', back_populates='pedidos')

class Pago(db.Model):
    __tablename__ = 'pagos'
    
    id = db.Column(db.Integer, primary_key=True)
    monto = db.Column(db.Numeric(10, 2))
    metodo_pago = db.Column(db.String(50))
    estado_pago = db.Column(db.String(50))
    fecha_pago = db.Column(db.DateTime, default=datetime.utcnow)
    pedido_id = db.Column(db.Integer, db.ForeignKey('pedidos.id'))
    
    # Relación
    pedido = db.relationship('Pedido', back_populates='pagos')

class Venta(db.Model):
    __tablename__ = 'ventas'
    
    id = db.Column(db.Integer, primary_key=True)
    fecha_venta = db.Column(db.DateTime, default=datetime.utcnow)
    estado_venta = db.Column(db.String(50))  # O db.Enum
    total = db.Column(db.Numeric(10, 2))
    cliente_id = db.Column(db.Integer, db.ForeignKey('clientes.id'))
    
    # Relaciones
    cliente = db.relationship('Cliente', back_populates='ventas')
    productos = db.relationship('VentaProducto', back_populates='venta')

class VentaProducto(db.Model):
    __tablename__ = 'ventas_productos'
    
    id = db.Column(db.Integer, primary_key=True)
    cantidad = db.Column(db.Integer)
    precio = db.Column(db.Numeric(10, 2))
    venta_id = db.Column(db.Integer, db.ForeignKey('ventas.id'))
    producto_id = db.Column(db.Integer, db.ForeignKey('productos.id'))
    
    # Relaciones
    venta = db.relationship('Venta', back_populates='productos')
    producto = db.relationship('Producto', back_populates='ventas')

class Inventario(db.Model):
    __tablename__ = 'inventarios'
    
    id = db.Column(db.Integer, primary_key=True)
    cantidad = db.Column(db.Integer)
    tipo_movimiento = db.Column(db.String(20))  # O db.Enum
    fecha_movimiento = db.Column(db.DateTime, default=datetime.utcnow)
    producto_id = db.Column(db.Integer, db.ForeignKey('productos.id'))
    
    # Relación
    producto = db.relationship('Producto', back_populates='inventarios')

class Reseña(db.Model):
    __tablename__ = 'reseñas'
    
    id = db.Column(db.Integer, primary_key=True)
    calificacion = db.Column(db.Integer)
    comentario = db.Column(db.Text)
    fecha = db.Column(db.DateTime, default=datetime.utcnow)
    producto_id = db.Column(db.Integer, db.ForeignKey('productos.id'))
    cliente_id = db.Column(db.Integer, db.ForeignKey('clientes.id'))
    
    # Relaciones
    producto = db.relationship('Producto', back_populates='reseñas')
    cliente = db.relationship('Cliente', back_populates='reseñas')

class Usuario(db.Model):
    __tablename__ = 'usuarios'
    
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(120), unique=True, nullable=False)
    password = db.Column(db.String(128), nullable=False)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    ultimo_acceso = db.Column(db.DateTime)
    
    def set_password(self, password):
        self.password = generate_password_hash(password)
    
    def check_password(self, password):
        return check_password_hash(self.password, password)