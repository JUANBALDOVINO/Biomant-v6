-- BioMant: fecha del próximo mantenimiento preventivo para alertas.
-- Las fechas existentes quedan NULL hasta que un Administrador las programe.
USE biomant;

ALTER TABLE equipos
    ADD COLUMN IF NOT EXISTS proximo_mto_preventivo DATE NULL
    COMMENT 'Fecha programada del próximo mantenimiento preventivo';
