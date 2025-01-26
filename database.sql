CREATE DATABASE IF NOT EXISTS eventos_db;
USE eventos_db;

CREATE TABLE IF NOT EXISTS eventos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(255),
  titulo VARCHAR(255),
  descripcion TEXT,
  textoBoton VARCHAR(100),
  linkBoton VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Insertar datos de ejemplo en la tabla eventos
INSERT INTO eventos (image, titulo, descripcion, textoBoton, linkBoton) VALUES
(
  'https://i.ibb.co/9Td3wVk/ben-white-W8-Qqn1-Pm-QH0-unsplash.jpg',
  'Culto de oración',
  'Únete a nosotros cada miércoles a las 7 PM para un tiempo de oración comunitaria y fortalecimiento espiritual. Juntos, elevaremos nuestras voces al cielo.',
  'Leer más',
  '/pagina1'
),
(
  'https://i.ibb.co/KW60XdT/aaron-burden-9zs-HNt5-Opq-E-unsplash.jpg',
  'Reunión de varones',
  'Caballeros, los invitamos a nuestra reunión mensual este sábado. Compartiremos testimonios, estudiaremos la Palabra y nos apoyaremos mutuamente en nuestro caminar cristiano.',
  'Ver detalles',
  '/pagina2'
),
(
  'https://i.ibb.co/b786r8G/biblia.jpg',
  'Reunión de damas',
  'Queridas hermanas, las esperamos en nuestra reunión especial este viernes. Tendremos un tiempo de alabanza, estudio bíblico y compañerismo diseñado específicamente para mujeres de fe.',
  'Ver detalles',
  '/pagina2'
);

-- Para ejecutar el script de admin:admin escribir en consola node src/scripts/createAdmin.js
