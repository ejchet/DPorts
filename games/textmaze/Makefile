# Created by: ijliao
# $FreeBSD: games/textmaze/Makefile 317587 2013-05-07 08:42:29Z ehaupt $

PORTNAME=	textmaze
PORTVERSION=	1.2
CATEGORIES=	games perl5
MASTER_SITES=	http://www.robobunny.com/projects/textmaze/ \
		CRITICAL
DISTNAME=	${PORTNAME}_v${PORTVERSION}

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Generates mazes on a text terminal and lets you traverse them

RUN_DEPENDS=	p5-Curses>=0:${PORTSDIR}/devel/p5-Curses

USES=		shebangfix
USE_PERL5=	yes
NO_BUILD=	yes

SHEBANG_FILES=	textmaze
PLIST_FILES=	bin/textmaze

WRKSRC=		${WRKDIR}/TextMaze

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
