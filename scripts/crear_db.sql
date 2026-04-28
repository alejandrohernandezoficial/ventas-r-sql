CREATE TABLE ventas (
                    id_ventas INTEGER PRIMARY KEY,
                    producto TEXT,
                    categoria TEXT,
                    precio REAL,
                    cantidad INTEGER,
                    fecha TEXT
);

INSERT INTO ventas (producto, categoria, precio, cantidad, fecha) VALUES
                    ('Laptop', 'Tecnología', 15000, 2, '2024-01-10'),
                    ('Mouse', 'Tecnología', 300, 5, '2024-01-11'),
                    ('Teclado', 'Tecnología', 800, 3, '2024-01-12'),
                    ('Silla', 'Oficina', 2000, 1, '2024-01-15'),
                    ('Escritorio', 'Oficina', 5000, 1, '2024-01-20');

COMMI;