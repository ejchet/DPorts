# Created by: trevor
# $FreeBSD: textproc/diffsplit/Makefile 324181 2013-08-03 08:45:51Z az $

PORTNAME=	diffsplit
PORTVERSION=	1.0
CATEGORIES=	textproc devel
MASTER_SITES=	http://www.pathname.com/~quinlan/software/diffsplit/
DISTNAME=	diffsplit
EXTRACT_SUFX=
EXTRACT_ONLY=

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Splits a unified diff into pieces which patch one file each

NO_BUILD=	YES
NO_WRKSUBDIR=	YES
PLIST_FILES=	bin/diffsplit
USES=		shebangfix perl5
SHEBANG_FILES=	diffsplit

do-extract:
	@${MKDIR} ${WRKDIR}
	@${CP} ${DISTDIR}/${DIST_SUBDIR}/diffsplit ${WRKDIR}

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/diffsplit ${PREFIX}/bin

.include <bsd.port.mk>
