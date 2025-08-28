-- Crear el esquema "empleos"
CREATE SCHEMA IF NOT EXISTS empleos;

-- Establecer el esquema "empleos" como el predeterminado para esta sesión
SET search_path TO empleos, public;

-- Tabla para gestionar la información de los usuarios.
-- Incluye datos personales, de contacto y credenciales de acceso.
CREATE TABLE IF NOT EXISTS usuarios (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(255) UNIQUE NOT NULL, -- El correo electrónico debe ser único para cada usuario
    password_hash VARCHAR(255) NOT NULL, -- Se usa un hash para la contraseña por seguridad
    fecha_registro TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    telefono VARCHAR(50),
    direccion TEXT
);

-- Tabla para las habilidades de los usuarios.
-- Permite que un usuario tenga múltiples habilidades.
CREATE TABLE IF NOT EXISTS habilidades (
    habilidad_id SERIAL PRIMARY KEY,
    nombre_habilidad VARCHAR(100) UNIQUE NOT NULL -- Las habilidades deben ser únicas
);

-- Tabla de unión para relacionar usuarios con sus habilidades.
-- Un usuario puede tener múltiples habilidades.
CREATE TABLE IF NOT EXISTS usuario_habilidades (
    usuario_id INT NOT NULL,
    habilidad_id INT NOT NULL,
    PRIMARY KEY (usuario_id, habilidad_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id) ON DELETE CASCADE, -- Si se elimina un usuario, se eliminan sus habilidades asociadas
    FOREIGN KEY (habilidad_id) REFERENCES habilidades(habilidad_id) ON DELETE CASCADE -- Si se elimina una habilidad, se eliminan las asociaciones
);

-- Tabla para la experiencia laboral de los usuarios.
-- Un usuario puede tener una o varias experiencias laborales.
CREATE TABLE IF NOT EXISTS experiencia_laboral (
    experiencia_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    nombre_empresa VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE, -- La fecha de fin puede ser nula para el empleo actual
    descripcion TEXT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id) ON DELETE CASCADE -- Si se elimina un usuario, se elimina su experiencia laboral
);

-- Tabla para los contactos entre usuarios.
-- Utiliza una clave compuesta para evitar duplicados.
CREATE TABLE IF NOT EXISTS contactos (
    usuario_principal_id INT NOT NULL,
    usuario_contacto_id INT NOT NULL,
    PRIMARY KEY (usuario_principal_id, usuario_contacto_id),
    FOREIGN KEY (usuario_principal_id) REFERENCES usuarios(usuario_id) ON DELETE CASCADE, -- Si se elimina un usuario, se elimina su relación de contacto
    FOREIGN KEY (usuario_contacto_id) REFERENCES usuarios(usuario_id) ON DELETE CASCADE, -- Si se elimina un usuario, se elimina su relación de contacto
    CONSTRAINT ck_no_auto_contact CHECK (usuario_principal_id != usuario_contacto_id) -- Un usuario no puede ser su propio contacto
);

-- Índices para mejorar el rendimiento de las consultas
CREATE INDEX IF NOT EXISTS idx_usuarios_correo ON usuarios(correo_electronico);
CREATE INDEX IF NOT EXISTS idx_experiencia_usuario ON experiencia_laboral(usuario_id);
CREATE INDEX IF NOT EXISTS idx_contactos_principal ON contactos(usuario_principal_id);
CREATE INDEX IF NOT EXISTS idx_contactos_contacto ON contactos(usuario_contacto_id);

--- DATOS DE PRUEBA ---

-- Datos de usuarios
INSERT INTO usuarios (usuario_id, nombre, apellido, correo_electronico, password_hash) VALUES
(1, 'Ana', 'García', 'ana.garcia@email.com', md5('hash123')),
(2, 'Juan', 'Pérez', 'juan.perez@email.com', md5('hash456')),
(3, 'María', 'López', 'maria.lopez@email.com', md5('hash789'));

-- Datos de habilidades
INSERT INTO habilidades (habilidad_id, nombre_habilidad) VALUES
(1, 'PostgreSQL'),
(2, 'Python'),
(3, 'Data Analysis'),
(4, 'Project Management');

-- Datos de unión de usuarios y habilidades
INSERT INTO usuario_habilidades (usuario_id, habilidad_id) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 4);

-- Datos de experiencia laboral
INSERT INTO experiencia_laboral (usuario_id, nombre_empresa, cargo, fecha_inicio, fecha_fin) VALUES
(1, 'Tech Solutions', 'Database Administrator', '2020-01-15', '2023-05-30'),
(1, 'Data Corp', 'Data Analyst', '2023-06-01', NULL), -- Experiencia actual
(2, 'Dev Innova', 'Software Developer', '2018-03-10', '2022-12-20'),
(3, 'Global Projects', 'Project Manager', '2019-07-01', NULL);

-- Datos de contactos
INSERT INTO contactos (usuario_principal_id, usuario_contacto_id) VALUES
(1, 2),
(1, 3),
(2, 1);



