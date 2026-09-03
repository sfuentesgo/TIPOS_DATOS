-- TABLA DE ACTIVOS CRÍTICOS Y CUSTODIA (SEGURIDAD PATRIMONIAL)
CREATE TABLE inventario_activos (
    id_activo VARCHAR(10) PRIMARY KEY,
    nombre_activo VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    sede_ubicacion VARCHAR(50) NOT NULL,
    id_custodio VARCHAR(10) NOT NULL,
    valor_comercial_usd DECIMAL(10,2) NOT NULL,
    nivel_criticidad VARCHAR(15) CHECK (nivel_criticidad IN ('BAJO', 'MEDIO', 'ALTO', 'CRITICO')),
    fecha_adquisicion DATE NOT NULL,
    estado_operativo VARCHAR(20) DEFAULT 'OPERATIVO'
);

-- REGISTROS DE ACTIVOS ASIGNADOS AL PERSONAL AUDITADO
INSERT INTO inventario_activos VALUES 
('ACT-0012', 'Portátil Dell Latitude 5420', 'Equipos de Cómputo', 'Sede Central - Piso 3', 'EMP-1045', 1350.00, 'MEDIO', '2025-03-12', 'OPERATIVO'),
('ACT-0045', 'Servidor PowerEdge R750', 'Infraestructura TI', 'Centro de Cómputo', 'EMP-0412', 8200.00, 'CRITICO', '2024-11-05', 'OPERATIVO'),
('ACT-0089', 'Montacargas Eléctrico Yale', 'Maquinaria de Carga', 'Bodega Norte', 'EMP-3310', 28500.00, 'ALTO', '2025-06-20', 'MANTENIMIENTO'),
('ACT-0104', 'Caja Fuerte Retardada Chubb', 'Seguridad Física', 'Bóveda - Archivo Valor', 'EMP-1045', 6400.00, 'CRITICO', '2023-08-14', 'OPERATIVO'),
('ACT-0215', 'Escáner Documental Kodak', 'Equipos de Oficina', 'Talento Humano', 'EMP-5501', 950.00, 'BAJO', '2026-01-18', 'OPERATIVO');

-- CONSULTA GERENCIAL DE VERIFICACIÓN (AUDITORÍA DE CONTROL)
SELECT 
    id_activo,
    nombre_activo,
    id_custodio,
    valor_comercial_usd
FROM inventario_activos
WHERE nivel_criticidad IN ('ALTO', 'CRITICO')
ORDER BY valor_comercial_usd DESC;