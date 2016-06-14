CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "usuarios" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "perfil_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_usuarios_on_email" ON "usuarios" ("email");
CREATE UNIQUE INDEX "index_usuarios_on_reset_password_token" ON "usuarios" ("reset_password_token");
CREATE TABLE "perfils" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombreperfil" varchar, "descripcionperfil" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "rols" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombrerol" varchar, "descripcionrol" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "usuario_rols" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "usuario_id" integer, "rol_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_usuario_rols_on_usuario_id" ON "usuario_rols" ("usuario_id");
CREATE INDEX "index_usuario_rols_on_rol_id" ON "usuario_rols" ("rol_id");
CREATE TABLE "categoria" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre_categoria" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "tipo_cuenta" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "tipo" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "bancos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nro_cuenta" varchar, "nombre_banco" varchar, "tipo_cuenta_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_bancos_on_tipo_cuenta_id" ON "bancos" ("tipo_cuenta_id");
CREATE TABLE "ubicacions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombreubicacion" varchar, "direccion_ubicacion" varchar, "tipo" integer, "cliente_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_ubicacions_on_cliente_id" ON "ubicacions" ("cliente_id");
CREATE TABLE "unidads" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "numero_unidad" integer, "calle_interna" varchar, "ubicacion_id" integer, "categoria_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_unidads_on_ubicacion_id" ON "unidads" ("ubicacion_id");
CREATE INDEX "index_unidads_on_categoria_id" ON "unidads" ("categoria_id");
CREATE TABLE "usuario_unidads" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "usuario_id" integer, "unidad_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_usuario_unidads_on_usuario_id" ON "usuario_unidads" ("usuario_id");
CREATE INDEX "index_usuario_unidads_on_unidad_id" ON "usuario_unidads" ("unidad_id");
CREATE TABLE "clientes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "rut" varchar, "razon_social" varchar, "direccion_cliente" varchar, "email_cliente" varchar, "telefono_cliente" varchar, "representante_legal" varchar, "logo" varchar, "usuario_id" integer, "banco_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "nemo" varchar);
CREATE INDEX "index_clientes_on_usuario_id" ON "clientes" ("usuario_id");
CREATE INDEX "index_clientes_on_banco_id" ON "clientes" ("banco_id");
INSERT INTO schema_migrations (version) VALUES ('20160530164135');

INSERT INTO schema_migrations (version) VALUES ('20160531213753');

INSERT INTO schema_migrations (version) VALUES ('20160531221816');

INSERT INTO schema_migrations (version) VALUES ('20160601150114');

INSERT INTO schema_migrations (version) VALUES ('20160601152624');

INSERT INTO schema_migrations (version) VALUES ('20160601152710');

INSERT INTO schema_migrations (version) VALUES ('20160602201605');

INSERT INTO schema_migrations (version) VALUES ('20160602203031');

INSERT INTO schema_migrations (version) VALUES ('20160602203523');

INSERT INTO schema_migrations (version) VALUES ('20160602204207');

INSERT INTO schema_migrations (version) VALUES ('20160602204758');

INSERT INTO schema_migrations (version) VALUES ('20160602212958');

INSERT INTO schema_migrations (version) VALUES ('20160602215920');

INSERT INTO schema_migrations (version) VALUES ('20160603153514');

INSERT INTO schema_migrations (version) VALUES ('20160603155727');

