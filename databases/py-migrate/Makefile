# New ports collection makefile for:   py-migrate
# Date created:        9 November 2006
# Whom:                elvstone@gmail.com
#
# $FreeBSD: ports/databases/py-migrate/Makefile,v 1.17 2012/11/17 05:55:22 svnexp Exp $
#

PORTNAME=	migrate
PORTVERSION=	0.7.2
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	sqlalchemy-${PORTNAME}-${PORTVERSION}

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Database schema migrations for SQLAlchemy

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlalchemy>=0.7:${PORTSDIR}/databases/py-sqlalchemy \
		${PYTHON_PKGNAMEPREFIX}Tempita>0:${PORTSDIR}/textproc/py-Tempita \
		${PYTHON_PKGNAMEPREFIX}decorator>0:${PORTSDIR}/devel/py-decorator

PROJECTHOST=	sqlalchemy-migrate
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_PKGNAME=	sqlalchemy_${PORTNAME}

.include <bsd.port.mk>
