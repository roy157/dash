from flask import Blueprint, jsonify, request
from app import db
from app.models import Producto, Pedido, Usuario, Categoria
from datetime import datetime, timedelta
from sqlalchemy import func

bp = Blueprint('api', __name__, url_prefix='/api')

# Dashboard Endpoints
@bp.route('/dashboard/summary')
def dashboard_summary():
    total_ventas = Pedido.query.with_entities(
        func.sum(Pedido.total)
    ).filter_by(estado='completado').scalar() or 0
    
    ventas_mes = Pedido.query.with_entities(
        func.sum(Pedido.total)
    ).filter(
        Pedido.estado == 'completado',
        Pedido.fecha_creacion >= datetime.now().replace(day=1)
    ).scalar() or 0
    
    return jsonify({
        'total_ventas': float(total_ventas),
        'ventas_mes': float(ventas_mes),
        'total_productos': Producto.query.count(),
        'total_clientes': Usuario.query.filter_by(es_admin=False).count(),
        'productos_bajo_stock': len(Producto.get_low_stock())
    })

@bp.route('/dashboard/recent-sales')
def recent_sales():
    sales = Pedido.query.join(Usuario).filter(
        Pedido.estado == 'completado'
    ).order_by(
        Pedido.fecha_creacion.desc()
    ).limit(5).all()
    
    return jsonify([{
        'id': s.id,
        'cliente': s.cliente.username,
        'total': float(s.total),
        'fecha': s.fecha_creacion.strftime('%Y-%m-%d'),
        'estado': s.estado
    } for s in sales])

# Product Endpoints
@bp.route('/products')
def get_products():
    page = request.args.get('page', 1, type=int)
    per_page = request.args.get('per_page', 10, type=int)
    
    products = Producto.query.filter_by(activo=True).paginate(
        page=page, per_page=per_page, error_out=False)
    
    return jsonify({
        'products': [{
            'id': p.id,
            'nombre': p.nombre,
            'precio': float(p.precio),
            'stock': p.stock,
            'categoria': p.categoria.nombre if p.categoria else None
        } for p in products.items],
        'total': products.total,
        'pages': products.pages,
        'current_page': page
    })

@bp.route('/products/<int:id>')
def get_product(id):
    product = Producto.query.get_or_404(id)
    return jsonify({
        'id': product.id,
        'nombre': product.nombre,
        'descripcion': product.descripcion,
        'precio': float(product.precio),
        'stock': product.stock,
        'categoria': product.categoria.nombre if product.categoria else None
    })