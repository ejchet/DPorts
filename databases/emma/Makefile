# New ports collection makefile for:	emma
# Date created:				2 December 2006
# Whom:					Junji NAKANISHI <jun-g@daemonfreaks.com>
#
# $FreeBSD: ports/databases/emma/Makefile,v 1.9 2012/11/17 05:55:07 svnexp Exp $
#

PORTNAME=	emma
PORTVERSION=	0.6
PORTREVISION=	6
CATEGORIES=	databases
MASTER_SITES=	http://www.fastflo.de/files/emma/downloads/python_src/

MAINTAINER=	jun-g@daemonfreaks.com
COMMENT=	Extendable MySQL managing assistant

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}MySQLdb>=1.2.3:${PORTSDIR}/databases/py-MySQLdb

USE_GNOME=	pygtk2
USE_PYTHON=	yes
USE_PYDISTUTILS=yes

pre-patch:
	@${REINPLACE_CMD} -e 's|python2.4|env python|' ${WRKSRC}/emma

.include <bsd.port.mk>
