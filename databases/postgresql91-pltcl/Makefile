# New ports collection makefile for:	PostgreSQL PL/Tcl
# Date created:		January 14, 2002
# Whom:			Palle Girgensohn <girgen@partitur.se>
#
# $FreeBSD: ports/databases/postgresql91-pltcl/Makefile,v 1.2 2012/11/17 05:55:21 svnexp Exp $
#

PORTNAME=	postgresql
PORTREVISION=	3
CATEGORIES=	databases tcl
PKGNAMESUFFIX=	-pltcl

MAINTAINER=	pgsql@FreeBSD.org
COMMENT=	A module for using Tcl to write SQL functions

MASTERDIR=	${.CURDIR}/../../databases/postgresql${WANT_PGSQL_VER}-server

BUILD_DEPENDS=	postgres:${POSTGRESQL_PORT}
RUN_DEPENDS=	postgres:${POSTGRESQL_PORT}
POSTGRESQL_PORT?=${PORTSDIR}/databases/postgresql${WANT_PGSQL_VER}-server

WANT_PGSQL_VER?=91

# you can use "make WITH_TCL_VER=84" or similar for your favourite tcl version
USE_TCL=	84+
CONFIGURE_ARGS=	--with-tcl --without-tk \
		--with-tclconfig="${TCL_LIBDIR}" \
		--with-includes="${TCL_INCLUDEDIR}"

CONFIGURE_ENV+=	TCLSH="${TCLSH}"
MAKE_ENV+=	TCL_INCDIR="${TCL_INCLUDEDIR}"

BUILD_DIRS=	src/backend src/pl/tcl
INSTALL_DIRS=	src/pl/tcl
SLAVE_ONLY=	yes

.include "${MASTERDIR}/Makefile"
