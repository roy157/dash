from app import create_app

app = create_app()

if __name__ == '__main__':
    app.run(debug=True)

    from app import create_app

app = create_app()

# Imprime las rutas disponibles
print("Rutas disponibles:")
for rule in app.url_map.iter_rules():
    print(f"- {rule}")

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)