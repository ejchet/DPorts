# $FreeBSD: security/qtkeychain/Makefile 315930 2013-04-17 06:06:24Z jgh $

PORTNAME=	qtkeychain
PORTVERSION=	0.1.0
CATEGORIES=	security

MAINTAINER=	6yearold@gmail.com
COMMENT=	Platform independent Qt API for storing passwords

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/COPYING

USE_GITHUB=	yes
GH_ACCOUNT=	frankosterfeld
GH_TAGNAME=	v${PORTVERSION}
GH_COMMIT=	bb32e45

USES=	cmake
USE_QT4=	corelib dbus moc_build qmake_build rcc_build
USE_LDCONFIG=	yes

MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
