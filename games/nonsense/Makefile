# Created by: roam@FreeBSD.org
# $FreeBSD: games/nonsense/Makefile 313672 2013-03-08 20:23:38Z eadler $

PORTNAME=	nonsense
PORTVERSION=	0.6
CATEGORIES=	games
MASTER_SITES=	SF

MAINTAINER=	eadler@FreeBSD.org
COMMENT=	Nonsense text generator

NO_BUILD=	defined

MAN6=		nonsense.6

.include <bsd.port.options.mk>

post-configure:
		${REINPLACE_CMD} -e "s,/usr/local,${PREFIX}," ${WRKSRC}/nonsense
		${SED} -e "s^%%PREFIX%%^${PREFIX}^g" \
			< ${FILESDIR}/${MAN6} > ${WRKSRC}/${MAN6}

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/nonsense ${PREFIX}/bin
		${MKDIR} ${PREFIX}/share/nonsense/data
		${MKDIR} ${PREFIX}/share/nonsense/template
		${INSTALL_DATA} ${WRKSRC}/*.data ${PREFIX}/share/nonsense/data
		${INSTALL_DATA} ${WRKSRC}/*.template ${PREFIX}/share/nonsense/template
		${INSTALL_MAN} ${WRKSRC}/${MAN6} ${PREFIX}/man/man6/
.if ${PORT_OPTIONS:MDOCS}
		${MKDIR} ${PREFIX}/share/doc/nonsense
		${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nonsense/
.endif

.include <bsd.port.mk>
