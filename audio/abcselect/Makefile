# Created by: Sue Blake <sue@FreeBSD.org>
# $FreeBSD: audio/abcselect/Makefile 324191 2013-08-03 13:44:00Z mat $

PORTNAME=	abcselect
PORTVERSION=	1.5
CATEGORIES=	audio
MASTER_SITES=	http://www.lautengesellschaft.de/cdmm/
DISTNAME=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Extract parts, movements, etc from abc music files

USES=		shebangfix perl5
USE_PERL5=	run
NO_BUILD=	yes

SHEBANG_FILES=	abcselect

MAN1=	abcselect.1
PLIST_FILES=	bin/abcselect

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/abcselect ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/abcselect.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
