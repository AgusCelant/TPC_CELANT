CREATE DATABASE CLINICA
GO 
USE CLINICA
GO

--4
CREATE TABLE PACIENTE(
IDPACIENTE INT NOT NULL PRIMARY KEY IDENTITY(1,1),
NOMBRE VARCHAR(20) NOT NULL,
APELLIDO VARCHAR(20) NOT NULL,
DOCUMENTO INT NOT NULL UNIQUE,
FNAC DATE NOT NULL,
IDOBSOCIAL INT NOT NULL FOREIGN KEY REFERENCES OBRASOCIAL(IDOS),
NROAFILIADO INT NOT NULL UNIQUE,
IDDIRECCION INT NOT NULL FOREIGN KEY REFERENCES DIRECCIONES(IDDIRECCION)
)
GO

--5
CREATE TABLE MEDICOS(
IDMEDICO INT NOT NULL PRIMARY KEY IDENTITY(1,1),
NOMBRE VARCHAR(20),
APELLIDO VARCHAR(20),
EDAD INT NOT NULL,
FNAC DATE NOT NULL,
NMATRICULA INT NOT NULL
)
GO
            
--1
CREATE TABLE LOCALIDADES(
IDLOCALIDAD INT NOT NULL PRIMARY KEY IDENTITY(1,1),
CPOSTAL VARCHAR(20) NOT NULL,
DESCRIPCION VARCHAR(100) NOT NULL
)
GO

--2
CREATE TABLE DIRECCIONES(
IDDIRECCION INT NOT NULL PRIMARY KEY IDENTITY(1,1),
CALLE VARCHAR(50) NOT NULL,
NUMERO INT NOT NULL,
IDLOCALIDAD INT NOT NULL FOREIGN KEY REFERENCES LOCALIDADES(IDLOCALIDAD)
)
GO

--6
CREATE TABLE ESPECIALIDADES(
IDESPECIALIDAD INT NOT NULL PRIMARY KEY IDENTITY(1,1),
DESCRIPCION VARCHAR (50) NOT NULL
)
GO

--3
CREATE TABLE OBRASOCIAL(
IDOS INT NOT NULL PRIMARY KEY IDENTITY(1,1),
NOMBRE VARCHAR(20) NOT NULL,
TELEFONO INT NOT NULL,
MAIL VARCHAR(50) NOT NULL
)
GO

--7
CREATE TABLE ESPECIALIDADxMEDICO(
IDESP INT NOT NULL FOREIGN KEY REFERENCES ESPECIALIDADES(IDESPECIALIDAD),
IDMED INT NOT NULL FOREIGN KEY REFERENCES MEDICOS (IDMEDICO)
PRIMARY KEY(IDESP, IDMED)
)
GO

--8
CREATE TABLE OSxMEDICO(
IDOBS INT NOT NULL FOREIGN KEY REFERENCES OBRASOCIAL(IDOS),
IDMED INT NOT NULL FOREIGN KEY REFERENCES MEDICOS(IDMEDICO)
PRIMARY KEY(IDOBS, IDMED)
)
GO

--9
CREATE TABLE DIAS(
IDDIA INT NOT NULL PRIMARY KEY IDENTITY (1,1),
DIA VARCHAR(10) NOT NULL,
)
GO

--10
CREATE TABLE HORASINIT(
IDHORAINICIO INT NOT NULL PRIMARY KEY IDENTITY(1,1),
HORAINICIO INT NOT NULL
)
GO

--11
CREATE TABLE HORASEND(
IDHORAFIN INT NOT NULL PRIMARY KEY IDENTITY(1,1),
HORAFIN INT NOT NULL
)
GO

--12
CREATE TABLE DIASxMEDICO(
IDMED INT NOT NULL FOREIGN KEY REFERENCES MEDICOS(IDMEDICO),
IDDIA INT NOT NULL FOREIGN KEY REFERENCES DIAS(IDDIA)
)
GO

--13
CREATE TABLE HORASxDIAS(
IDHORAINICIO INT NOT NULL FOREIGN KEY REFERENCES HORASINIT(IDHORAINICIO),
IDHORAFIN INT NOT NULL FOREIGN KEY REFERENCES HORASEND(IDHORAFIN),
IDDIA INT NOT NULL FOREIGN KEY REFERENCES DIAS(IDDIA), 
IDMED INT NOT NULL FOREIGN KEY REFERENCES MEDICOS(IDMEDICO)
)
GO

--14
CREATE TABLE TURNOS(
IDTURNO INT NOT NULL PRIMARY KEY IDENTITY(1,1),
IDPACIENTE INT NOT NULL FOREIGN KEY REFERENCES PACIENTE(IDPACIENTE),
IDMEDICO INT NOT NULL FOREIGN KEY REFERENCES MEDICOS(IDMEDICO),
IDESPECIALIDAD INT NOT NULL FOREIGN KEY REFERENCES ESPECIALIDADES(IDESPECIALIDAD),
IDOBS INT NOT NULL FOREIGN KEY REFERENCES OBRASOCIAL(IDOS),
FECHA DATETIME NOT NULL,
VALOR INT NOT NULL
)
GO

--15
CREATE TABLE USUARIOS(
IDUSUARIO INT NOT NULL PRIMARY KEY IDENTITY(1,1),
USUARIO VARCHAR(20) NOT NULL UNIQUE,
PASS INT NOT NULL,
)

----------------------CONSULTAS------------------------------------
DROP TABLE MEDICOS
DROP TABLE DIASxMEDICO
DROP TABLE HORASxDIAS
DROP TABLE ESPECIALIDADxMEDICO
DROP TABLE OSxMEDICO
DROP TABLE OBRASOCIAL
DROP TABLE LOCALIDADES
DROP TABLE DIRECCIONES
DROP TABLE PACIENTE
DROP TABLE DIAS
DROP TABLE HORASINIT
DROP TABLE HORASEND
DROP TABLE TURNOS
DROP TABLE USUARIOS

SELECT * FROM LOCALIDADES
SELECT * FROM DIRECCIONES
SELECT * FROM PACIENTE
SELECT * FROM ESPECIALIDADES
SELECT * FROM MEDICOS
SELECT * FROM ESPECIALIDADxMEDICO
SELECT * FROM OSxMEDICO
SELECT * FROM OBRASOCIAL
SELECT * FROM DIAS
SELECT * FROM HORAS  


-----------------------------------------------------------------------------------

INSERT INTO USUARIOS VALUES('ADMIN', 39846533)

INSERT INTO LOCALIDADES VALUES('123', 'TIGRE')
INSERT INTO LOCALIDADES VALUES('456', 'SAN FERNANDO')
INSERT INTO LOCALIDADES VALUES('789', 'PACHECO')
INSERT INTO LOCALIDADES VALUES('101', 'SAN ISIDRO')
INSERT INTO LOCALIDADES VALUES('102', 'MARTINEZ')

INSERT INTO LOCALIDADES VALUES('1761','20 DE JUNIO')
INSERT INTO LOCALIDADES VALUES('6660', '25 DE MAYO')
INSERT INTO LOCALIDADES VALUES('6405', '30 DE AGOSTO')
INSERT INTO LOCALIDADES VALUES('1776', '9 DE ABRIL')
INSERT INTO LOCALIDADES VALUES('6500', '9 DE JULIO ESTAFETA N�2')
INSERT INTO LOCALIDADES VALUES('6500', '9 DE JULIO(PARTIDO NUEVE DE JULIO)')
INSERT INTO LOCALIDADES VALUES('1903', 'ABASTO')
INSERT INTO LOCALIDADES VALUES('7228', 'ABBOTT')
INSERT INTO LOCALIDADES VALUES('6450', 'ABEL')
INSERT INTO LOCALIDADES VALUES('8170', 'ABRA DE HINOJO')
INSERT INTO LOCALIDADES VALUES('1640', 'ACASSUSO')
INSERT INTO LOCALIDADES VALUES('7003', 'ACEILAN')
INSERT INTO LOCALIDADES VALUES('2717', 'ACEVEDO')
INSERT INTO LOCALIDADES VALUES('6627', 'ACHUPALLAS')
INSERT INTO LOCALIDADES VALUES('7136', 'ADELA')
INSERT INTO LOCALIDADES VALUES('8000', 'ADELA CORTI')
INSERT INTO LOCALIDADES VALUES('6430', 'ADOLFO ALSINA')
INSERT INTO LOCALIDADES VALUES('1901', 'ADOLFO F. ORMA(APEADERO F.G.B.)')
INSERT INTO LOCALIDADES VALUES('7513', 'ADOLFO GONZALEZ CHAVES')
INSERT INTO LOCALIDADES VALUES('1612', 'ADOLFO SOURDEAUX')
INSERT INTO LOCALIDADES VALUES('1846', 'ADROGUE')
INSERT INTO LOCALIDADES VALUES('1722', 'AERODROMO ALBATROS')
INSERT INTO LOCALIDADES VALUES('1802', 'AEROPUERTO EZEIZA')
INSERT INTO LOCALIDADES VALUES('6608', 'AGOTE')
INSERT INTO LOCALIDADES VALUES('1746', 'AGUA DE ORO')
INSERT INTO LOCALIDADES VALUES('8105', 'AGUARA')
INSERT INTO LOCALIDADES VALUES('2701', 'AGUAS CORRIENTES')
INSERT INTO LOCALIDADES VALUES('2915', 'AGUIRREZABALA')
INSERT INTO LOCALIDADES VALUES('1723', 'AGUSTIN FERRARI')
INSERT INTO LOCALIDADES VALUES('6667', 'AGUSTIN MOSCONI')
INSERT INTO LOCALIDADES VALUES('6001', 'AGUSTIN ROCA')
INSERT INTO LOCALIDADES VALUES('6001', 'AGUSTINA')
/*INSERT INTO LOCALIDADES VALUES(6463 ALAGON
INSERT INTO LOCALIDADES VALUES(6437 ALAMOS
INSERT INTO LOCALIDADES VALUES(6703 ALASTUEY (APEADERO F.C.G.U.)
INSERT INTO LOCALIDADES VALUES(6405 ALBARI�O
INSERT INTO LOCALIDADES VALUES(6034 ALBERDI
INSERT INTO LOCALIDADES VALUES(6634 ALBERTI
INSERT INTO LOCALIDADES VALUES(8101 ALDEA ROMANA
INSERT INTO LOCALIDADES VALUES(8126 ALDEA SAN ANDRES
INSERT INTO LOCALIDADES VALUES(7406 ALDECON
INSERT INTO LOCALIDADES VALUES(1770 ALDO BONZI
INSERT INTO LOCALIDADES VALUES(1987 ALEGRE
INSERT INTO LOCALIDADES VALUES(1864 ALEJANDRO KORN
INSERT INTO LOCALIDADES VALUES(1808 ALEJANDRO PETION (APEADERO FCGR)
INSERT INTO LOCALIDADES VALUES(6437 ALFA
INSERT INTO LOCALIDADES VALUES(6555 ALFALAD
INSERT INTO LOCALIDADES VALUES(8117 ALFEREZ SAN MARTIN
INSERT INTO LOCALIDADES VALUES(6533 ALFREDO DEMARCHI
INSERT INTO LOCALIDADES VALUES(6531 ALGARROBO (COLONIA MAURICIO, PDO. C. CASARES)
INSERT INTO LOCALIDADES VALUES(2935 ALGARROBO (ING. MONETA, PDO. SAN PEDRO)
INSERT INTO LOCALIDADES VALUES(8136 ALGARROBO (PDO.VILLARINO)
INSERT INTO LOCALIDADES VALUES(1676 ALIANZA ALMACENES
INSERT INTO LOCALIDADES VALUES(1676 ALIANZA TALLERES
INSERT INTO LOCALIDADES VALUES(2751 ALMACEN CASTRO
INSERT INTO LOCALIDADES VALUES(2752 ALMACEN DEL DESCANSO
INSERT INTO LOCALIDADES VALUES(2751 ALMACEN EL CRUCE
INSERT INTO LOCALIDADES VALUES(2740 ALMACEN LA COLONIA
INSERT INTO LOCALIDADES VALUES(2711 ALMACEN PIATTI
INSERT INTO LOCALIDADES VALUES(1676 ALMACENES FFCC.GRAL.SAN MARTIN
INSERT INTO LOCALIDADES VALUES(1846 ALMIRANTE BROWN
INSERT INTO LOCALIDADES VALUES(1629 ALMIRANTE IRIZAR
INSERT INTO LOCALIDADES VALUES(8109 ALMIRANTE SOLIER
INSERT INTO LOCALIDADES VALUES(2938 ALSINA
INSERT INTO LOCALIDADES VALUES(8181 ALTA VISTA
INSERT INTO LOCALIDADES VALUES(6601 ALTAMIRA
INSERT INTO LOCALIDADES VALUES(1986 ALTAMIRANO
INSERT INTO LOCALIDADES VALUES(1617 ALTO DEL TALAR
INSERT INTO LOCALIDADES VALUES(2801 ALTO VERDE
INSERT INTO LOCALIDADES VALUES(7303 ALTONA
INSERT INTO LOCALIDADES VALUES(1806 ALTOS DE TRISTAN SUAREZ
INSERT INTO LOCALIDADES VALUES(7267 ALVAREZ DE TOLEDO
INSERT INTO LOCALIDADES VALUES(1921 ALVAREZ JONTE
INSERT INTO LOCALIDADES VALUES(7403 ALVARO BARROS
INSERT INTO LOCALIDADES VALUES(7021 ALZAGA
INSERT INTO LOCALIDADES VALUES(6516 AMALIA
INSERT INTO LOCALIDADES VALUES(8508 AMBROSIO P. LEZICA
INSERT INTO LOCALIDADES VALUES(6064 AMEGHINO
INSERT INTO LOCALIDADES VALUES(6237 AMERICA
INSERT INTO LOCALIDADES VALUES(6607 ANASAGASTI
INSERT INTO LOCALIDADES VALUES(6451 ANCON
INSERT INTO LOCALIDADES VALUES(6555 ANDANT
INSERT INTO LOCALIDADES VALUES(6621 ANDERSON
INSERT INTO LOCALIDADES VALUES(6634 ANDRES VACCAREZZA
INSERT INTO LOCALIDADES VALUES(7011 ANEQUE GRANDE
INSERT INTO LOCALIDADES VALUES(1901 ANGEL ETCHEVERRY
INSERT INTO LOCALIDADES VALUES(7243 ANTONIO CARBONI
INSERT INTO LOCALIDADES VALUES(7305 ANTONIO DE LOS HEROS
INSERT INTO LOCALIDADES VALUES(8158 APARICIO
INSERT INTO LOCALIDADES VALUES(1909 ARANA
INSERT INTO LOCALIDADES VALUES(6443 ARANO
INSERT INTO LOCALIDADES VALUES(6643 ARAUJO
INSERT INTO LOCALIDADES VALUES(6557 ARBOLEDAS
INSERT INTO LOCALIDADES VALUES(1915 ARBUCO (DESVIO FCGR)
INSERT INTO LOCALIDADES VALUES(6005 ARENALES
INSERT INTO LOCALIDADES VALUES(6075 ARENAZA
INSERT INTO LOCALIDADES VALUES(8134 ARGERICH
INSERT INTO LOCALIDADES VALUES(8164 ARGUEDAS (DESVIO)
INSERT INTO LOCALIDADES VALUES(7163 ARIAS
INSERT INTO LOCALIDADES VALUES(7301 ARIEL
INSERT INTO LOCALIDADES VALUES(1602 ARISTOBULO DEL VALLE
INSERT INTO LOCALIDADES VALUES(2740 ARRECIFES
INSERT INTO LOCALIDADES VALUES(6007 ARRIBE�OS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ABRA VIEJA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO AGUAJE DEL DURAZNO
INSERT INTO LOCALIDADES VALUES(8174 ARROYO AGUAS BLANCAS
INSERT INTO LOCALIDADES VALUES(2800 ARROYO AGUILA NEGRA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ALBARRACIN
INSERT INTO LOCALIDADES VALUES(2805 ARROYO ALELI
INSERT INTO LOCALIDADES VALUES(1649 ARROYO AMANTES
INSERT INTO LOCALIDADES VALUES(1649 ARROYO AMARILLO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO AMARILLO PALMAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANDRESITO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANGELITO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANGOSTURA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANGUILAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANIMAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANIMITAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANTEQUERA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ANTEQUERITA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ARROYON
INSERT INTO LOCALIDADES VALUES(1649 ARROYO ARROYON DE FELICARIA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BALDOSAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BALTICO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BANCO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BARCA GRANDE
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BOCA FALSA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BORASSO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BORCHES
INSERT INTO LOCALIDADES VALUES(2800 ARROYO BOTIJA FALSA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BUENA VISTA
INSERT INTO LOCALIDADES VALUES(2935 ARROYO BURGOS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO BUSTO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CAGUANE
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CAMACHITO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CAMACHO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CANALETON
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CANCHA LARGA
INSERT INTO LOCALIDADES VALUES(1625 ARROYO CANELON
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CANELONES
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CAPITAN CHICO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CAPITANCITO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARABALLO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARABELAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARABELITAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARACOLES
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARAGUATA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARANCHO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARAPUATI
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARLOS M. NOEL
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARNICERO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CARPINCHO (PDO. SAN FERNANDO)
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CIEGO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CIEGO DEL ESTUDIANTE
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CIEGUITO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CIERVO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CONCEPCION
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CONFITERITO PALMAS
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CONFITERO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CORREA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CORRENTINO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CORRENTOSO (BARCA GRANDE)
INSERT INTO LOCALIDADES VALUES(8172 ARROYO CORTO (PDO. SAAVEDRA)
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CORTO (TIGRE � PDO. CAMPANA)
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CRUCES
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CRUZ COLORADA
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CRUZ DEL CAMBADO
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CRUZ DEL SAUCE
INSERT INTO LOCALIDADES VALUES(1649 ARROYO CUARENTA

2808 ATUCHA
7165 AUTOCAMPING EL PINAR
7105 AUTOCAMPING SAN CLEMENTE
1870 AVELLANEDA
8133 AVESTRUZ
7150 AYACUCHO
6721 AZCUENAGA
8181 AZOPARDO
7005 AZUCENA
7300 AZUL
1825 A. A. FERNANDEZ
6516 BACACAY
6403 BADANO
1808 BADIOLA
8000 BAHIA BLANCA
8000 BAHIA BLANCA NOROESTE
8506 BAHIA SAN BLAS
6013 BAIGORRITA
8115 BAJO HONDO
7620 BALCARCE
7113 BALNEARIO AGUAS VERDES
1744 BALNEARIO CASCALLARES
7505 BALNEARIO CLAROMECO
7609 BALNEARIO MAR CHIQUITA
8153 BALNEARIO MONTE HERMOSO
7511 BALNEARIO OCEANO
7167 BALNEARIO OSTENDE
1802 BALNEARIO POPULAR
1931 BALNEARIO PUNTA LARA
7511 BALNEARIO RETA
8153 BALNEARIO SAUCE GRANDE
8109 BALNEARIO (PARADA)
6070 BALSA
7305 BA�ADO DE LAS FLORES
1617 BANCALARI
6244 BANDERALO
1828 BANFIELD
2942 BARADERO
7005 BARKER
7247 BARRIENTOS
2700 BARRIO 25 DE MAYO
1888 BARRIO 9 DE JULIO (FLORENCIO VARELA, PDO. F. VARELA)
1665 BARRIO 9 DE JULIO (JOSE C. PAZ, PDO. GRAL.SARMIENTO)
7600 BARRIO 9 DE JULIO (MAR DEL PLATA, PDO. GRAL.PUEYRREDON)
2900 BARRIO 9 DE JULIO (SAN NICOLAS, PDO. SAN NICOLAS)
2700 BARRIO ACEVEDO
1714 BARRIO AERONAUTICO (ITUZAINGO, PDO. MORON)
1665 BARRIO AERONAUTICO (JOSE C. PAZ, PDO. GRAL.SARMIENTO)
1759 BARRIO ALBERDI (GONZALEZ CATAN, ESTAFETA No.1, LA MATANZA)
1665 BARRIO ALBERDI (JOSE C. PAZ, PDO. GRAL. SARMIENTO)
7600 BARRIO ALFAR
8000 BARRIO ALMAFUERTE (BAHIA BLANCA, PDO. BAHIA BLANCA)
1856 BARRIO ALMAFUERTE (GLEW, PDO. ALTE. BROWN)
1766 BARRIO ALMAFUERTE (TABLADA, PDO. LA MATANZA)
1617 BARRIO ALMTE. BROWN
1836 BARRIO ALTO VERDE (LLAVALLOL, PDO. DE LOMAS DE ZAMORA)
2900 BARRIO ALTO VERDE (SAN NICOLAS, PDO. SAN NICOLAS)
1665 BARRIO ALTOS DE JOSE C.PAZ
1757 BARRIO ALTOS DE LAFERRERE
1806 BARRIO ALTOS DE TRISTAN SUAREZ
1665 BARRIO ANTARTIDA ARGENTINA
1763 BARRIO APOLO
1607 BARRIO ARCA
1742 BARRIO ARCO IRIS
1665 BARRIO ARGITAL
1852 BARRIO ARZENO
1847 BARRIO ASUNCION
8000 BARRIO AVELLANEDA
1708 BARRIO AVIACION
1804 BARRIO A.T.E.
1611 BARRIO BAIRES
7630 BARRIO BANCO PROVINCIA
1663 BARRIO BARILARI
7601 BARRIO BATAN
1619 BARRIO BELIERA
1642 BARRIO BOATING CLUB
7600 BARRIO BOSQUE ALEGRE
1759 BARRIO CALDERON DE LA BARCA
2900 BARRIO CARCEL
6000 BARRIO CAROSIO
7600 BARRIO CAISAMAR
1744 BARRIO CASCALLARES
7300 BARRIO CEFERINO NAMUNCURA
1884 BARRIO CENTENARIO
2741 BARRIO CENTRAL
7630 BARRIO CENTRO
1888 BARRIO CINCO ESQUINAS
8109 BARRIO CIUDAD ATLANTIDA
2930 BARRIO COBOS
7600 BARRIO COLINAS DE PERALTA RAMOS
1763 BARRIO COLONIA SAN LORENZO
7600 BARRIO CONSTITUCION
1888 BARRIO CORTEZ
1663 BARRIO CORTIJO NUEVO
1667 BARRIO CHELITO
1657 BARRIO CHURRUCA
6600 BARRIO DE LA CARCEL
1708 BARRIO DE LA MERCED
7600 BARRIO DE LAS AVENIDAS
1659 BARRIO DE SUBOFICIALES SARGENTO CABRAL (APEADERO F.C.G.U.)
1806 BARRIO DEL PLATA
2900 BARRIO DESTILERIA
1615 BARRIO DEVOTO
1611 BARRIO DOCTOR RICARDO GUTIERREZ
2914 BARRIO DON ANTONIO
7600 BARRIO DON BOSCO
1854 BARRIO DON LUIS
1852 BARRIO DO�A SOL
1881 BARRIO DRAIMAR
1881 BARRIO DREYMAR II
1765 BARRIO SAN MIGUEL
1889 BARRIO EL 36
1765 BARRIO EL ATALAYA
1617 BARRIO EL BOYERO
8109 BARRIO EL CASTILLO
1663 BARRIO EL CORTIJO
1900 BARRIO EL CRUCE
1686 BARRIO EL DESTINO
1759 BARRIO EL DORADO (GONZALEZ CATAN, PDO. LA MATANZA)
1879 BARRIO EL DORADO (QUILMES OESTE, PDO. QUILMES)
1617 BARRIO EL EMBRUJO
1663 BARRIO EL FARO
1852 BARRIO EL GAUCHO (BURZACO, PDO. ALTE. BROWN)
7600 BARRIO EL GAUCHO (MAR DEL PLATA, PDO. GRAL.PUEYRREDON)
1852 BARRIO EL HORNERO
7130 BARRIO EL HUECO
1613 BARRIO EL JAGUEL
1613 BARRIO EL LUCERO
1765 BARRIO EL MANZANAR
1759 BARRIO EL MOJON
1613 BARRIO EL OMBU (LOS POLVORINES, PDO. GRAL.SARMIENTO)
1761 BARRIO EL OMBU (PONTEVEDRA, PDO. MERLO)
1884 BARRIO EL ONCE
1891 BARRIO EL PARQUE
1849 BARRIO EL PATRONATO
1617 BARRIO EL PEREJIL
1722 BARRIO EL PERICON
1915 BARRIO EL PORTE�O
1746 BARRIO EL PORVENIR
1882 BARRIO EL REFUGIO
2741 BARRIO EL RETIRO
1761 BARRIO EL SOL (PONTEVEDRA, PDO. MERLO
1763 BARRIO EL SOL (PUENTE EZCURRA, PDO. LA MATANZA)
1849 BARRIO EL TREBOL
1617 BARRIO EL ZORZAL
7600 BARRIO EMIR RAMON JUAREZ
1617 BARRIO ENRIQUE DELFINO
1763 BARRIO ESPERANZA
7100 BARRIO ESTACION DOLORES
7631 BARRIO ESTACION QUEQUEN
1802 BARRIO ESTEBAN ECHEVERRIA
7600 BARRIO FARO NORTE
1617 BARRIO FERRINI
1882 BARRIO FERROVIARIO
6620 BARRIO FLORENCIO VARELA
7600 BARRIO FLORENTINO AMEGHINO
1665 BARRIO FRINO
*/


INSERT INTO DIAS VALUES('LUNES')
INSERT INTO DIAS VALUES('MARTES')
INSERT INTO DIAS VALUES('MIERCOLES')
INSERT INTO DIAS VALUES('JUEVES')
INSERT INTO DIAS VALUES('VIERNES')
INSERT INTO DIAS VALUES('SABADO')
INSERT INTO DIAS VALUES('DOMINGO')

INSERT INTO HORASINIT VALUES(1)
INSERT INTO HORASINIT VALUES(2)
INSERT INTO HORASINIT VALUES(3)
INSERT INTO HORASINIT VALUES(4)
INSERT INTO HORASINIT VALUES(5)
INSERT INTO HORASINIT VALUES(6)
INSERT INTO HORASINIT VALUES(7)
INSERT INTO HORASINIT VALUES(8)
INSERT INTO HORASINIT VALUES(9)
INSERT INTO HORASINIT VALUES(10)
INSERT INTO HORASINIT VALUES(11)
INSERT INTO HORASINIT VALUES(12)
INSERT INTO HORASINIT VALUES(13)
INSERT INTO HORASINIT VALUES(14)
INSERT INTO HORASINIT VALUES(15)
INSERT INTO HORASINIT VALUES(16)
INSERT INTO HORASINIT VALUES(17)
INSERT INTO HORASINIT VALUES(18)
INSERT INTO HORASINIT VALUES(19)
INSERT INTO HORASINIT VALUES(20)
INSERT INTO HORASINIT VALUES(21)
INSERT INTO HORASINIT VALUES(22)
INSERT INTO HORASINIT VALUES(23)
INSERT INTO HORASINIT VALUES(24)

INSERT INTO HORASEND VALUES(1)
INSERT INTO HORASEND VALUES(2)
INSERT INTO HORASEND VALUES(3)
INSERT INTO HORASEND VALUES(4)
INSERT INTO HORASEND VALUES(5)
INSERT INTO HORASEND VALUES(6)
INSERT INTO HORASEND VALUES(7)
INSERT INTO HORASEND VALUES(8)
INSERT INTO HORASEND VALUES(9)
INSERT INTO HORASEND VALUES(10)
INSERT INTO HORASEND VALUES(11)
INSERT INTO HORASEND VALUES(12)
INSERT INTO HORASEND VALUES(13)
INSERT INTO HORASEND VALUES(14)
INSERT INTO HORASEND VALUES(15)
INSERT INTO HORASEND VALUES(16)
INSERT INTO HORASEND VALUES(17)
INSERT INTO HORASEND VALUES(18)
INSERT INTO HORASEND VALUES(19)
INSERT INTO HORASEND VALUES(20)
INSERT INTO HORASEND VALUES(21)
INSERT INTO HORASEND VALUES(22)
INSERT INTO HORASEND VALUES(23)
INSERT INTO HORASEND VALUES(24)
