# Created by: Jaap Akkerhuis <jaap@NLnetLabs.nl>
# $FreeBSD: security/softhsm/Makefile 308209 2012-12-04 08:38:48Z rm $

PORTNAME=	softhsm
PORTVERSION=	1.3.4
CATEGORIES=	security
MASTER_SITES=	http://dist.opendnssec.org/source/

MAINTAINER=	jaap@NLnetLabs.nl
COMMENT=	Software implementation of a Hardware Security Module (HSM)

LIB_DEPENDS=	botan:${PORTSDIR}/security/botan \
		sqlite3:${PORTSDIR}/databases/sqlite3

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-botan=${LOCALBASE} --with-sqlite3=${LOCALBASE}

USE_LDCONFIG=	yes

MAN1=		softhsm.1 softhsm-keyconv.1
MAN5=		softhsm.conf.5

.include <bsd.port.mk>
