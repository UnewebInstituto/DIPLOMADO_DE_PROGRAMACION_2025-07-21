--
-- PostgreSQL database dump
--

-- Dumped from database version 17rc1
-- Dumped by pg_dump version 17rc1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: empleos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA empleos;


ALTER SCHEMA empleos OWNER TO postgres;

--
-- Name: SCHEMA empleos; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA empleos IS 'Definición de esquema para ejercicio de la clase.';


--
-- Name: tiposdatos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tiposdatos;


ALTER SCHEMA tiposdatos OWNER TO postgres;

--
-- Name: transporte; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA transporte;


ALTER SCHEMA transporte OWNER TO postgres;

--
-- Name: data_direccion; Type: TYPE; Schema: tiposdatos; Owner: postgres
--

CREATE TYPE tiposdatos.data_direccion AS (
	calle character varying(80),
	numero integer,
	codigo_postal integer,
	parroquia text,
	zona text,
	sector text,
	ciudad text,
	estado text,
	pais text
);


ALTER TYPE tiposdatos.data_direccion OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: contactos; Type: TABLE; Schema: empleos; Owner: postgres
--

CREATE TABLE empleos.contactos (
    usuario_principal_id integer NOT NULL,
    usuario_contacto_id integer NOT NULL
);


ALTER TABLE empleos.contactos OWNER TO postgres;

--
-- Name: experiencia_laboral; Type: TABLE; Schema: empleos; Owner: postgres
--

CREATE TABLE empleos.experiencia_laboral (
    experiencia_id integer NOT NULL,
    usuario_id integer NOT NULL,
    nombre_empresa character varying(255) NOT NULL,
    cargo character varying(255) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    descripcion text
);


ALTER TABLE empleos.experiencia_laboral OWNER TO postgres;

--
-- Name: experiencia_laboral_experiencia_id_seq; Type: SEQUENCE; Schema: empleos; Owner: postgres
--

CREATE SEQUENCE empleos.experiencia_laboral_experiencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE empleos.experiencia_laboral_experiencia_id_seq OWNER TO postgres;

--
-- Name: experiencia_laboral_experiencia_id_seq; Type: SEQUENCE OWNED BY; Schema: empleos; Owner: postgres
--

ALTER SEQUENCE empleos.experiencia_laboral_experiencia_id_seq OWNED BY empleos.experiencia_laboral.experiencia_id;


--
-- Name: habilidades; Type: TABLE; Schema: empleos; Owner: postgres
--

CREATE TABLE empleos.habilidades (
    habilidad_id integer NOT NULL,
    nombre_habilidad character varying(100) NOT NULL
);


ALTER TABLE empleos.habilidades OWNER TO postgres;

--
-- Name: usuario_habilidades; Type: TABLE; Schema: empleos; Owner: postgres
--

CREATE TABLE empleos.usuario_habilidades (
    usuario_id integer NOT NULL,
    habilidad_id integer NOT NULL
);


ALTER TABLE empleos.usuario_habilidades OWNER TO postgres;

--
-- Name: usuarios; Type: TABLE; Schema: empleos; Owner: postgres
--

CREATE TABLE empleos.usuarios (
    usuario_id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    correo_electronico character varying(255) NOT NULL,
    password_hash character varying(255) NOT NULL,
    fecha_registro timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    telefono character varying(50),
    direccion text
);


ALTER TABLE empleos.usuarios OWNER TO postgres;

--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE; Schema: empleos; Owner: postgres
--

CREATE SEQUENCE empleos.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE empleos.usuarios_usuario_id_seq OWNER TO postgres;

--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: empleos; Owner: postgres
--

ALTER SEQUENCE empleos.usuarios_usuario_id_seq OWNED BY empleos.usuarios.usuario_id;


--
-- Name: espacios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.espacios (
    id integer NOT NULL,
    espacio_tipo_id integer,
    estatus_id integer,
    ubicacion text
);


ALTER TABLE public.espacios OWNER TO postgres;

--
-- Name: espacios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.espacios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.espacios_id_seq OWNER TO postgres;

--
-- Name: espacios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.espacios_id_seq OWNED BY public.espacios.id;


--
-- Name: espacios_tipos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.espacios_tipos (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.espacios_tipos OWNER TO postgres;

--
-- Name: espacios_tipos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.espacios_tipos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.espacios_tipos_id_seq OWNER TO postgres;

--
-- Name: espacios_tipos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.espacios_tipos_id_seq OWNED BY public.espacios_tipos.id;


--
-- Name: estatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estatus (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.estatus OWNER TO postgres;

--
-- Name: estatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estatus_id_seq OWNER TO postgres;

--
-- Name: estatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estatus_id_seq OWNED BY public.estatus.id;


--
-- Name: reserva_estatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_estatus (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.reserva_estatus OWNER TO postgres;

--
-- Name: reserva_estatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_estatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reserva_estatus_id_seq OWNER TO postgres;

--
-- Name: reserva_estatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_estatus_id_seq OWNED BY public.reserva_estatus.id;


--
-- Name: reservas_usuarios_espacios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservas_usuarios_espacios (
    id integer NOT NULL,
    usuario_id integer,
    espacio_id integer,
    reserva_estatus_id integer,
    fecha_hora timestamp without time zone NOT NULL,
    tiempo_reserva integer NOT NULL
);


ALTER TABLE public.reservas_usuarios_espacios OWNER TO postgres;

--
-- Name: reservas_usuarios_espacios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservas_usuarios_espacios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reservas_usuarios_espacios_id_seq OWNER TO postgres;

--
-- Name: reservas_usuarios_espacios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservas_usuarios_espacios_id_seq OWNED BY public.reservas_usuarios_espacios.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    rol_id integer,
    cedula character varying(20) NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    correo_electronico character varying(100) NOT NULL,
    telefono character varying(20),
    clave character varying(100) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: contactos; Type: TABLE; Schema: tiposdatos; Owner: postgres
--

CREATE TABLE tiposdatos.contactos (
    id integer NOT NULL,
    nombre character varying(80),
    apellido character varying(80),
    correo_electronico text,
    telefono character varying(20)[],
    direccion tiposdatos.data_direccion
);


ALTER TABLE tiposdatos.contactos OWNER TO postgres;

--
-- Name: contactos_id_seq; Type: SEQUENCE; Schema: tiposdatos; Owner: postgres
--

CREATE SEQUENCE tiposdatos.contactos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE tiposdatos.contactos_id_seq OWNER TO postgres;

--
-- Name: contactos_id_seq; Type: SEQUENCE OWNED BY; Schema: tiposdatos; Owner: postgres
--

ALTER SEQUENCE tiposdatos.contactos_id_seq OWNED BY tiposdatos.contactos.id;


--
-- Name: autobuses; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.autobuses (
    id integer NOT NULL,
    marca_id integer,
    modelo_id integer,
    color_id integer
);


ALTER TABLE transporte.autobuses OWNER TO postgres;

--
-- Name: autobuses_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.autobuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.autobuses_id_seq OWNER TO postgres;

--
-- Name: autobuses_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.autobuses_id_seq OWNED BY transporte.autobuses.id;


--
-- Name: colores; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.colores (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL,
    codigo_hex character varying(7)
);


ALTER TABLE transporte.colores OWNER TO postgres;

--
-- Name: colores_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.colores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.colores_id_seq OWNER TO postgres;

--
-- Name: colores_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.colores_id_seq OWNED BY transporte.colores.id;


--
-- Name: conductores; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.conductores (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    cedula character varying(20) NOT NULL,
    licencia character varying(50) NOT NULL,
    telefono character varying(15),
    email character varying(100)
);


ALTER TABLE transporte.conductores OWNER TO postgres;

--
-- Name: conductores_autobuses_turnos; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.conductores_autobuses_turnos (
    id integer NOT NULL,
    conductor_id integer,
    autobus_id integer,
    turno_id integer
);


ALTER TABLE transporte.conductores_autobuses_turnos OWNER TO postgres;

--
-- Name: conductores_autobuses_turnos_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.conductores_autobuses_turnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.conductores_autobuses_turnos_id_seq OWNER TO postgres;

--
-- Name: conductores_autobuses_turnos_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.conductores_autobuses_turnos_id_seq OWNED BY transporte.conductores_autobuses_turnos.id;


--
-- Name: conductores_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.conductores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.conductores_id_seq OWNER TO postgres;

--
-- Name: conductores_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.conductores_id_seq OWNED BY transporte.conductores.id;


--
-- Name: marcas; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.marcas (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE transporte.marcas OWNER TO postgres;

--
-- Name: marcas_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.marcas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.marcas_id_seq OWNER TO postgres;

--
-- Name: marcas_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.marcas_id_seq OWNED BY transporte.marcas.id;


--
-- Name: modelos; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.modelos (
    id integer NOT NULL,
    marca_id integer,
    nombre character varying(50) NOT NULL,
    aa integer,
    descripcion text
);


ALTER TABLE transporte.modelos OWNER TO postgres;

--
-- Name: modelos_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.modelos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.modelos_id_seq OWNER TO postgres;

--
-- Name: modelos_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.modelos_id_seq OWNED BY transporte.modelos.id;


--
-- Name: paradas; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.paradas (
    id integer NOT NULL,
    nombre character varying(50),
    descripcion text
);


ALTER TABLE transporte.paradas OWNER TO postgres;

--
-- Name: paradas_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.paradas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.paradas_id_seq OWNER TO postgres;

--
-- Name: paradas_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.paradas_id_seq OWNED BY transporte.paradas.id;


--
-- Name: rutas; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.rutas (
    id integer NOT NULL,
    parada_id integer,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE transporte.rutas OWNER TO postgres;

--
-- Name: rutas_autobuses; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.rutas_autobuses (
    id integer NOT NULL,
    ruta_id integer,
    autobus_id integer
);


ALTER TABLE transporte.rutas_autobuses OWNER TO postgres;

--
-- Name: rutas_autobuses_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.rutas_autobuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.rutas_autobuses_id_seq OWNER TO postgres;

--
-- Name: rutas_autobuses_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.rutas_autobuses_id_seq OWNED BY transporte.rutas_autobuses.id;


--
-- Name: rutas_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.rutas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.rutas_id_seq OWNER TO postgres;

--
-- Name: rutas_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.rutas_id_seq OWNED BY transporte.rutas.id;


--
-- Name: turnos; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.turnos (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone NOT NULL,
    descripcion text
);


ALTER TABLE transporte.turnos OWNER TO postgres;

--
-- Name: turnos_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.turnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE transporte.turnos_id_seq OWNER TO postgres;

--
-- Name: turnos_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.turnos_id_seq OWNED BY transporte.turnos.id;


--
-- Name: vista_conductores_autobuses_turnos; Type: VIEW; Schema: transporte; Owner: postgres
--

CREATE VIEW transporte.vista_conductores_autobuses_turnos AS
 SELECT b.nombre AS nombre_conductor,
    b.apellido AS apellido_conductor,
    c.id AS id_autobus,
    d.nombre AS marca_autobus,
    e.nombre AS modelo_autobus,
    f.nombre AS color_autobus,
    g.nombre AS nombre_turno,
    g.hora_inicio,
    g.hora_fin
   FROM transporte.conductores_autobuses_turnos a,
    transporte.conductores b,
    transporte.autobuses c,
    transporte.marcas d,
    transporte.modelos e,
    transporte.colores f,
    transporte.turnos g
  WHERE ((a.conductor_id = b.id) AND (a.autobus_id = c.id) AND (a.turno_id = g.id) AND (c.marca_id = d.id) AND (c.modelo_id = e.id) AND (c.color_id = f.id));


ALTER VIEW transporte.vista_conductores_autobuses_turnos OWNER TO postgres;

--
-- Name: experiencia_laboral experiencia_id; Type: DEFAULT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.experiencia_laboral ALTER COLUMN experiencia_id SET DEFAULT nextval('empleos.experiencia_laboral_experiencia_id_seq'::regclass);


--
-- Name: usuarios usuario_id; Type: DEFAULT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.usuarios ALTER COLUMN usuario_id SET DEFAULT nextval('empleos.usuarios_usuario_id_seq'::regclass);


--
-- Name: espacios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espacios ALTER COLUMN id SET DEFAULT nextval('public.espacios_id_seq'::regclass);


--
-- Name: espacios_tipos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espacios_tipos ALTER COLUMN id SET DEFAULT nextval('public.espacios_tipos_id_seq'::regclass);


--
-- Name: estatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estatus ALTER COLUMN id SET DEFAULT nextval('public.estatus_id_seq'::regclass);


--
-- Name: reserva_estatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_estatus ALTER COLUMN id SET DEFAULT nextval('public.reserva_estatus_id_seq'::regclass);


--
-- Name: reservas_usuarios_espacios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas_usuarios_espacios ALTER COLUMN id SET DEFAULT nextval('public.reservas_usuarios_espacios_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Name: contactos id; Type: DEFAULT; Schema: tiposdatos; Owner: postgres
--

ALTER TABLE ONLY tiposdatos.contactos ALTER COLUMN id SET DEFAULT nextval('tiposdatos.contactos_id_seq'::regclass);


--
-- Name: autobuses id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses ALTER COLUMN id SET DEFAULT nextval('transporte.autobuses_id_seq'::regclass);


--
-- Name: colores id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.colores ALTER COLUMN id SET DEFAULT nextval('transporte.colores_id_seq'::regclass);


--
-- Name: conductores id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores ALTER COLUMN id SET DEFAULT nextval('transporte.conductores_id_seq'::regclass);


--
-- Name: conductores_autobuses_turnos id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores_autobuses_turnos ALTER COLUMN id SET DEFAULT nextval('transporte.conductores_autobuses_turnos_id_seq'::regclass);


--
-- Name: marcas id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.marcas ALTER COLUMN id SET DEFAULT nextval('transporte.marcas_id_seq'::regclass);


--
-- Name: modelos id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.modelos ALTER COLUMN id SET DEFAULT nextval('transporte.modelos_id_seq'::regclass);


--
-- Name: paradas id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.paradas ALTER COLUMN id SET DEFAULT nextval('transporte.paradas_id_seq'::regclass);


--
-- Name: rutas id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas ALTER COLUMN id SET DEFAULT nextval('transporte.rutas_id_seq'::regclass);


--
-- Name: rutas_autobuses id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas_autobuses ALTER COLUMN id SET DEFAULT nextval('transporte.rutas_autobuses_id_seq'::regclass);


--
-- Name: turnos id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.turnos ALTER COLUMN id SET DEFAULT nextval('transporte.turnos_id_seq'::regclass);


--
-- Data for Name: contactos; Type: TABLE DATA; Schema: empleos; Owner: postgres
--

COPY empleos.contactos (usuario_principal_id, usuario_contacto_id) FROM stdin;
1	2
1	3
2	1
\.


--
-- Data for Name: experiencia_laboral; Type: TABLE DATA; Schema: empleos; Owner: postgres
--

COPY empleos.experiencia_laboral (experiencia_id, usuario_id, nombre_empresa, cargo, fecha_inicio, fecha_fin, descripcion) FROM stdin;
1	1	Tech Solutions	Database Administrator	2020-01-15	2023-05-30	\N
2	1	Data Corp	Data Analyst	2023-06-01	\N	\N
3	2	Dev Innova	Software Developer	2018-03-10	2022-12-20	\N
4	3	Global Projects	Project Manager	2019-07-01	\N	\N
\.


--
-- Data for Name: habilidades; Type: TABLE DATA; Schema: empleos; Owner: postgres
--

COPY empleos.habilidades (habilidad_id, nombre_habilidad) FROM stdin;
1	PostgreSQL
2	Python
3	Data Analysis
4	Project Management
\.


--
-- Data for Name: usuario_habilidades; Type: TABLE DATA; Schema: empleos; Owner: postgres
--

COPY empleos.usuario_habilidades (usuario_id, habilidad_id) FROM stdin;
1	1
1	3
2	2
2	3
3	4
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: empleos; Owner: postgres
--

COPY empleos.usuarios (usuario_id, nombre, apellido, correo_electronico, password_hash, fecha_registro, telefono, direccion) FROM stdin;
1	Ana	García	ana.garcia@email.com	35e5d160921d131d9114f1b4ee5f9d55	2025-08-28 10:41:46.294535-04	\N	\N
2	Juan	Pérez	juan.perez@email.com	094b5bf6da077ec4e2ed3b103ac6a991	2025-08-28 10:41:46.294535-04	\N	\N
3	María	López	maria.lopez@email.com	17a0ad47bf9d0aae5e36dd4bbb7d81cf	2025-08-28 10:41:46.294535-04	\N	\N
\.


--
-- Data for Name: espacios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.espacios (id, espacio_tipo_id, estatus_id, ubicacion) FROM stdin;
1	1	1	Edificio A, Aula 101
2	2	1	Edificio B, Auditorio Principal
3	3	2	Edificio C, Laboratorio de Ciencias
4	4	1	Edificio D, Biblioteca Central
5	5	1	Cancha Deportiva al aire libre
6	6	1	Edificio E, Sala de Reuniones 201
\.


--
-- Data for Name: espacios_tipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.espacios_tipos (id, nombre, descripcion) FROM stdin;
1	Aula especializada	Aulas equipadas con tecnolog¡a avanzada para materias espec¡ficas como laboratorios de ciencias, aulas de inform tica, etc.
2	Auditorio	Espacios grandes dise¤ados para eventos, conferencias y presentaciones.
3	Laboratorio	Espacios equipados para experimentos y pr cticas cient¡ficas.
4	Biblioteca	Espacios dedicados al estudio y la consulta de materiales bibliogr ficos.
5	Cancha	µreas al aire libre o cubiertas para actividades deportivas.
6	Sala de reuniones	Espacios destinados a reuniones y discusiones en grupo.
\.


--
-- Data for Name: estatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estatus (id, nombre, descripcion) FROM stdin;
1	Disponible	El espacio est  libre y puede ser reservado.
2	En reparaci¢n	El espacio est  cerrado temporalmente para reparaciones o mejoras.
3	Ocupado	El espacio est  actualmente en uso y no puede ser reservado.
\.


--
-- Data for Name: reserva_estatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_estatus (id, nombre, descripcion) FROM stdin;
1	Abierta	La reserva est  activa y puede ser modificada o cancelada.
2	Cerrada	La reserva ha sido completada y ya no puede ser modificada.
3	Cancelada	La reserva ha sido anulada y el espacio queda disponible para otros usuarios.
\.


--
-- Data for Name: reservas_usuarios_espacios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservas_usuarios_espacios (id, usuario_id, espacio_id, reserva_estatus_id, fecha_hora, tiempo_reserva) FROM stdin;
1	1	1	1	2023-09-01 10:00:00	2
2	2	2	1	2023-09-01 14:00:00	3
3	1	3	2	2023-09-02 09:00:00	1
4	2	4	1	2023-09-02 11:00:00	2
5	1	5	3	2023-09-03 15:00:00	4
6	2	6	1	2023-09-03 08:00:00	2
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, nombre, descripcion) FROM stdin;
1	Profesor	Usuario con permisos para impartir clases y gestionar materiales educativos.
2	Personal administrativo	Usuario encargado de la gesti¢n administrativa y operativa de la instituci¢n.
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, rol_id, cedula, nombre, apellido, correo_electronico, telefono, clave) FROM stdin;
1	1	V1234	Ana	Vasquez	av@gmail.com	+58 414 1234567	d5df2f60445674b3127d6732805b1bc4
2	1	V5678	Libia	Cols	lc@gmail.com	+58 414 2234567	2a624357f99dfd99b9435034bf8def92
3	2	V9012	Nelly	Contreras	nc@gmail.com	+58 414 3234567	0403e6c75f7a22d83e38c5d97b212ad1
4	2	V3456	Hedrina	Monasterios	hm@hotmail.com	+58 414 4234567	b3e63e9fbbe48922d7ce80ae419b96d4
\.


--
-- Data for Name: contactos; Type: TABLE DATA; Schema: tiposdatos; Owner: postgres
--

COPY tiposdatos.contactos (id, nombre, apellido, correo_electronico, telefono, direccion) FROM stdin;
2	Nelly	Contreras	nc@gmail.com	{"+58 212 2345678","+58 416 6789012","+58 212 6784523"}	\N
3	Libia	Cols	lc@hotmail.com	{"+58 212 3631234","+58 416 9998877"}	\N
4	Maiba	Romero	mr@hotmail.com	{"+58 212 5678901","+58 414 2345678","+58 212 3345678"}	\N
1	Ana	Vasquez	av@gmail.com	{"+58 212 1234567","+58 414 9876543"}	(Principal,1,1060,"La Vega","El Carmen",Entrada,Caracas,"Distrito Capital",Venezuela)
5	YAZMIN	COLS	yc@gmail.com	{"+58 212 9876543","+58 414 9998877","+58 412 7776655"}	(Zulia,25,1071,"El Valle",Oeste,"La Acacias",Caracas,"Distrito Capital",Venezuela)
\.


--
-- Data for Name: autobuses; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.autobuses (id, marca_id, modelo_id, color_id) FROM stdin;
1	1	1	1
2	1	2	4
3	2	3	1
4	2	4	4
5	3	5	1
6	3	6	4
7	4	7	1
8	4	8	4
9	5	9	1
10	5	10	4
\.


--
-- Data for Name: colores; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.colores (id, nombre, codigo_hex) FROM stdin;
1	Blanco	#FFFFFF
2	Negro	#000000
3	Rojo	#FF0000
4	Azul	#0000FF
5	Verde	#00FF00
6	Amarillo	#FFFF00
7	Naranja	#FFA500
8	Gris	#808080
9	Plateado	#C0C0C0
10	Dorado	#FFD700
\.


--
-- Data for Name: conductores; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.conductores (id, nombre, apellido, cedula, licencia, telefono, email) FROM stdin;
1	Ana	Vasquez	V1234	L1234	2121234567	av@gmail.com
2	Juan	Gamez	V5678	L5678	2129876543	jg@gmail.com
3	Yolanda	Tortoza	V9012	L9012	2124567890	yt@gmail.com
4	Libia	Cols	V3456	L3456	2122345678	lc@gmail.com
\.


--
-- Data for Name: conductores_autobuses_turnos; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.conductores_autobuses_turnos (id, conductor_id, autobus_id, turno_id) FROM stdin;
1	1	1	1
2	1	2	2
3	2	3	1
4	2	4	2
5	3	5	1
6	3	6	2
7	4	7	1
8	4	8	2
9	1	9	3
10	2	10	3
\.


--
-- Data for Name: marcas; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.marcas (id, nombre, descripcion) FROM stdin;
1	Volvo	Marca sueca de autobuses y camiones
2	Mercedes Benz	Marca alemanda de autobuses y camiones
3	Scania	Marca sueca de autobuses y camiones
4	Ford	Marca estadounidense de autom¢viles y camiones
5	Iveco	Marca italiana de autobuses y camiones
\.


--
-- Data for Name: modelos; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.modelos (id, marca_id, nombre, aa, descripcion) FROM stdin;
1	1	Volvo 9700	2019	Autob£s de lujo para viajes de larga distancia
2	1	Volvo B11R	2020	Autob£s interurbano con motor potente y eficiente
3	2	Mercedes-Benz Tourismo	2018	Autob£s de turismo con dise¤o moderno y c¢modo
4	2	Mercedes-Benz Citaro	2021	Autob£s urbano con tecnolog¡a avanzada y bajo consumo de combustible
5	3	Scania Touring	2019	Autob£s de alta capacidad para transporte de pasajeros
6	3	Scania Citywide	2020	Autob£s urbano con dise¤o innovador y accesibilidad mejorada
7	4	Ford Transit	2018	Furgoneta vers til para transporte de pasajeros y carga ligera
8	4	Ford E-Series	2019	Veh¡culo comercial robusto para diversas aplicaciones
9	5	Iveco Daily	2020	Veh¡culo comercial ligero con m£ltiples configuraciones
10	5	Iveco Bus Crossway	2021	Autob£s interurbano con enfoque en confort y eficiencia
\.


--
-- Data for Name: paradas; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.paradas (id, nombre, descripcion) FROM stdin;
1	Parada Central	Parada principal en el centro de la ciudad
2	Parada Norte	Parada ubicada en el extremo norte de la ciudad
3	Parada Sur	Parada ubicada en el extremo sur de la ciudad
4	Parada Este	Parada ubicada en el extremo este de la ciudad
5	Parada Oeste	Parada ubicada en el extremo oeste de la ciudad
\.


--
-- Data for Name: rutas; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.rutas (id, parada_id, nombre, descripcion) FROM stdin;
1	1	Ruta 1	Ruta que conecta la Parada Central con la Parada Norte
2	2	Ruta 2	Ruta que conecta la Parada Central con la Parada Sur
3	3	Ruta 3	Ruta que conecta la Parada Central con la Parada Este
4	4	Ruta 4	Ruta que conecta la Parada Central con la Parada Oeste
5	5	Ruta 5	Ruta circular que conecta todas las paradas principales
\.


--
-- Data for Name: rutas_autobuses; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.rutas_autobuses (id, ruta_id, autobus_id) FROM stdin;
1	1	1
2	1	2
3	2	3
4	2	4
5	3	5
6	3	6
7	4	7
8	4	8
9	5	9
10	5	10
\.


--
-- Data for Name: turnos; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.turnos (id, nombre, hora_inicio, hora_fin, descripcion) FROM stdin;
1	Turno Ma¤ana	06:00:00	14:00:00	Turno de la ma¤ana para operaciones de autobuses
2	Turno Tarde	14:00:00	22:00:00	Turno de la tarde para operaciones de autobuses
3	Turno Noche	22:00:00	06:00:00	Turno de la noche para operaciones de autobuses
\.


--
-- Name: experiencia_laboral_experiencia_id_seq; Type: SEQUENCE SET; Schema: empleos; Owner: postgres
--

SELECT pg_catalog.setval('empleos.experiencia_laboral_experiencia_id_seq', 4, true);


--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE SET; Schema: empleos; Owner: postgres
--

SELECT pg_catalog.setval('empleos.usuarios_usuario_id_seq', 1, false);


--
-- Name: espacios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.espacios_id_seq', 6, true);


--
-- Name: espacios_tipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.espacios_tipos_id_seq', 6, true);


--
-- Name: estatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estatus_id_seq', 3, true);


--
-- Name: reserva_estatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_estatus_id_seq', 3, true);


--
-- Name: reservas_usuarios_espacios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservas_usuarios_espacios_id_seq', 6, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 4, true);


--
-- Name: contactos_id_seq; Type: SEQUENCE SET; Schema: tiposdatos; Owner: postgres
--

SELECT pg_catalog.setval('tiposdatos.contactos_id_seq', 5, true);


--
-- Name: autobuses_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.autobuses_id_seq', 10, true);


--
-- Name: colores_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.colores_id_seq', 10, true);


--
-- Name: conductores_autobuses_turnos_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.conductores_autobuses_turnos_id_seq', 10, true);


--
-- Name: conductores_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.conductores_id_seq', 4, true);


--
-- Name: marcas_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.marcas_id_seq', 5, true);


--
-- Name: modelos_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.modelos_id_seq', 10, true);


--
-- Name: paradas_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.paradas_id_seq', 5, true);


--
-- Name: rutas_autobuses_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.rutas_autobuses_id_seq', 10, true);


--
-- Name: rutas_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.rutas_id_seq', 5, true);


--
-- Name: turnos_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.turnos_id_seq', 3, true);


--
-- Name: contactos ck_no_auto_contact; Type: CHECK CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE empleos.contactos
    ADD CONSTRAINT ck_no_auto_contact CHECK ((usuario_principal_id <> usuario_contacto_id)) NOT VALID;


--
-- Name: contactos contactos_pkey; Type: CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (usuario_principal_id, usuario_contacto_id);


--
-- Name: experiencia_laboral experiencia_laboral_pkey; Type: CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.experiencia_laboral
    ADD CONSTRAINT experiencia_laboral_pkey PRIMARY KEY (experiencia_id);


--
-- Name: habilidades habilidades_nombre_habilidad_key; Type: CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.habilidades
    ADD CONSTRAINT habilidades_nombre_habilidad_key UNIQUE (nombre_habilidad);


--
-- Name: habilidades habilidades_pkey; Type: CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.habilidades
    ADD CONSTRAINT habilidades_pkey PRIMARY KEY (habilidad_id);


--
-- Name: usuarios uk_correo_electronico; Type: CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.usuarios
    ADD CONSTRAINT uk_correo_electronico UNIQUE (correo_electronico);


--
-- Name: usuario_habilidades usuario_habilidades_pkey; Type: CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.usuario_habilidades
    ADD CONSTRAINT usuario_habilidades_pkey PRIMARY KEY (usuario_id, habilidad_id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id);


--
-- Name: espacios espacios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espacios
    ADD CONSTRAINT espacios_pkey PRIMARY KEY (id);


--
-- Name: espacios_tipos espacios_tipos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espacios_tipos
    ADD CONSTRAINT espacios_tipos_pkey PRIMARY KEY (id);


--
-- Name: estatus estatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estatus
    ADD CONSTRAINT estatus_pkey PRIMARY KEY (id);


--
-- Name: reserva_estatus reserva_estatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_estatus
    ADD CONSTRAINT reserva_estatus_pkey PRIMARY KEY (id);


--
-- Name: reservas_usuarios_espacios reservas_usuarios_espacios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas_usuarios_espacios
    ADD CONSTRAINT reservas_usuarios_espacios_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_cedula_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_cedula_key UNIQUE (cedula);


--
-- Name: usuarios usuarios_correo_electronico_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_electronico_key UNIQUE (correo_electronico);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: contactos contactos_correo_electronico_key; Type: CONSTRAINT; Schema: tiposdatos; Owner: postgres
--

ALTER TABLE ONLY tiposdatos.contactos
    ADD CONSTRAINT contactos_correo_electronico_key UNIQUE (correo_electronico);


--
-- Name: contactos contactos_pkey; Type: CONSTRAINT; Schema: tiposdatos; Owner: postgres
--

ALTER TABLE ONLY tiposdatos.contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (id);


--
-- Name: autobuses autobuses_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_pkey PRIMARY KEY (id);


--
-- Name: colores colores_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.colores
    ADD CONSTRAINT colores_pkey PRIMARY KEY (id);


--
-- Name: conductores_autobuses_turnos conductores_autobuses_turnos_conductor_id_autobus_id_turno__key; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores_autobuses_turnos
    ADD CONSTRAINT conductores_autobuses_turnos_conductor_id_autobus_id_turno__key UNIQUE (conductor_id, autobus_id, turno_id);


--
-- Name: conductores_autobuses_turnos conductores_autobuses_turnos_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores_autobuses_turnos
    ADD CONSTRAINT conductores_autobuses_turnos_pkey PRIMARY KEY (id);


--
-- Name: conductores conductores_cedula_key; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores
    ADD CONSTRAINT conductores_cedula_key UNIQUE (cedula);


--
-- Name: conductores conductores_email_key; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores
    ADD CONSTRAINT conductores_email_key UNIQUE (email);


--
-- Name: conductores conductores_licencia_key; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores
    ADD CONSTRAINT conductores_licencia_key UNIQUE (licencia);


--
-- Name: conductores conductores_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores
    ADD CONSTRAINT conductores_pkey PRIMARY KEY (id);


--
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id);


--
-- Name: modelos modelos_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.modelos
    ADD CONSTRAINT modelos_pkey PRIMARY KEY (id);


--
-- Name: paradas paradas_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.paradas
    ADD CONSTRAINT paradas_pkey PRIMARY KEY (id);


--
-- Name: rutas_autobuses rutas_autobuses_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas_autobuses
    ADD CONSTRAINT rutas_autobuses_pkey PRIMARY KEY (id);


--
-- Name: rutas_autobuses rutas_autobuses_ruta_id_autobus_id_key; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas_autobuses
    ADD CONSTRAINT rutas_autobuses_ruta_id_autobus_id_key UNIQUE (ruta_id, autobus_id);


--
-- Name: rutas rutas_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas
    ADD CONSTRAINT rutas_pkey PRIMARY KEY (id);


--
-- Name: turnos turnos_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.turnos
    ADD CONSTRAINT turnos_pkey PRIMARY KEY (id);


--
-- Name: idx_contactos_contacto; Type: INDEX; Schema: empleos; Owner: postgres
--

CREATE INDEX idx_contactos_contacto ON empleos.contactos USING btree (usuario_contacto_id);


--
-- Name: idx_contactos_principal; Type: INDEX; Schema: empleos; Owner: postgres
--

CREATE INDEX idx_contactos_principal ON empleos.contactos USING btree (usuario_principal_id);


--
-- Name: idx_experiencia_usuario; Type: INDEX; Schema: empleos; Owner: postgres
--

CREATE INDEX idx_experiencia_usuario ON empleos.experiencia_laboral USING btree (usuario_id);


--
-- Name: idx_usuarios_correo; Type: INDEX; Schema: empleos; Owner: postgres
--

CREATE INDEX idx_usuarios_correo ON empleos.usuarios USING btree (correo_electronico);


--
-- Name: contactos fk_usuario_contacto_id; Type: FK CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.contactos
    ADD CONSTRAINT fk_usuario_contacto_id FOREIGN KEY (usuario_contacto_id) REFERENCES empleos.usuarios(usuario_id) ON DELETE CASCADE NOT VALID;


--
-- Name: experiencia_laboral fk_usuario_id; Type: FK CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.experiencia_laboral
    ADD CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES empleos.usuarios(usuario_id) ON DELETE CASCADE;


--
-- Name: CONSTRAINT fk_usuario_id ON experiencia_laboral; Type: COMMENT; Schema: empleos; Owner: postgres
--

COMMENT ON CONSTRAINT fk_usuario_id ON empleos.experiencia_laboral IS 'Asociación entre Usuarios y Experiencia laboral';


--
-- Name: contactos fk_usuario_principal_id; Type: FK CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.contactos
    ADD CONSTRAINT fk_usuario_principal_id FOREIGN KEY (usuario_principal_id) REFERENCES empleos.usuarios(usuario_id) ON DELETE CASCADE;


--
-- Name: usuario_habilidades usuario_habilidades_habilidad_id_fkey; Type: FK CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.usuario_habilidades
    ADD CONSTRAINT usuario_habilidades_habilidad_id_fkey FOREIGN KEY (habilidad_id) REFERENCES empleos.habilidades(habilidad_id) NOT VALID;


--
-- Name: usuario_habilidades usuario_habilidades_usuario_id_fkey; Type: FK CONSTRAINT; Schema: empleos; Owner: postgres
--

ALTER TABLE ONLY empleos.usuario_habilidades
    ADD CONSTRAINT usuario_habilidades_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES empleos.usuarios(usuario_id) ON DELETE CASCADE;


--
-- Name: espacios espacios_espacio_tipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espacios
    ADD CONSTRAINT espacios_espacio_tipo_id_fkey FOREIGN KEY (espacio_tipo_id) REFERENCES public.espacios_tipos(id) ON UPDATE CASCADE;


--
-- Name: espacios espacios_estatus_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espacios
    ADD CONSTRAINT espacios_estatus_id_fkey FOREIGN KEY (estatus_id) REFERENCES public.estatus(id) ON UPDATE CASCADE;


--
-- Name: reservas_usuarios_espacios reservas_usuarios_espacios_espacio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas_usuarios_espacios
    ADD CONSTRAINT reservas_usuarios_espacios_espacio_id_fkey FOREIGN KEY (espacio_id) REFERENCES public.espacios(id) ON UPDATE CASCADE;


--
-- Name: reservas_usuarios_espacios reservas_usuarios_espacios_reserva_estatus_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas_usuarios_espacios
    ADD CONSTRAINT reservas_usuarios_espacios_reserva_estatus_id_fkey FOREIGN KEY (reserva_estatus_id) REFERENCES public.reserva_estatus(id) ON UPDATE CASCADE;


--
-- Name: reservas_usuarios_espacios reservas_usuarios_espacios_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas_usuarios_espacios
    ADD CONSTRAINT reservas_usuarios_espacios_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) ON UPDATE CASCADE;


--
-- Name: usuarios usuarios_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id) ON UPDATE CASCADE;


--
-- Name: autobuses autobuses_color_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_color_id_fkey FOREIGN KEY (color_id) REFERENCES transporte.colores(id);


--
-- Name: autobuses autobuses_marca_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_marca_id_fkey FOREIGN KEY (marca_id) REFERENCES transporte.marcas(id);


--
-- Name: autobuses autobuses_modelo_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_modelo_id_fkey FOREIGN KEY (modelo_id) REFERENCES transporte.modelos(id);


--
-- Name: conductores_autobuses_turnos conductores_autobuses_turnos_autobus_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores_autobuses_turnos
    ADD CONSTRAINT conductores_autobuses_turnos_autobus_id_fkey FOREIGN KEY (autobus_id) REFERENCES transporte.autobuses(id);


--
-- Name: conductores_autobuses_turnos conductores_autobuses_turnos_conductor_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores_autobuses_turnos
    ADD CONSTRAINT conductores_autobuses_turnos_conductor_id_fkey FOREIGN KEY (conductor_id) REFERENCES transporte.conductores(id);


--
-- Name: conductores_autobuses_turnos conductores_autobuses_turnos_turno_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.conductores_autobuses_turnos
    ADD CONSTRAINT conductores_autobuses_turnos_turno_id_fkey FOREIGN KEY (turno_id) REFERENCES transporte.turnos(id);


--
-- Name: modelos modelos_marca_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.modelos
    ADD CONSTRAINT modelos_marca_id_fkey FOREIGN KEY (marca_id) REFERENCES transporte.marcas(id);


--
-- Name: rutas_autobuses rutas_autobuses_autobus_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas_autobuses
    ADD CONSTRAINT rutas_autobuses_autobus_id_fkey FOREIGN KEY (autobus_id) REFERENCES transporte.autobuses(id);


--
-- Name: rutas_autobuses rutas_autobuses_ruta_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas_autobuses
    ADD CONSTRAINT rutas_autobuses_ruta_id_fkey FOREIGN KEY (ruta_id) REFERENCES transporte.rutas(id);


--
-- Name: rutas rutas_parada_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas
    ADD CONSTRAINT rutas_parada_id_fkey FOREIGN KEY (parada_id) REFERENCES transporte.paradas(id);


--
-- PostgreSQL database dump complete
--

