# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD: security/switzerland/Makefile 315749 2013-04-06 23:22:20Z wg $

PORTNAME=	switzerland
PORTVERSION=	0.1.0
CATEGORIES=	security python
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/zero%20point%20one
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Test the integrity of communications over networks and firewalls

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PORTDOCS=	*

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's,gcc -O3,${CC} ${CFLAGS}, ; \
		s,"Switzerland","switzerland", ; \
		s,"0\.0","${PORTVERSION}",' ${WRKSRC}/setup.py

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/BUGS.txt ${WRKSRC}/README.txt \
		${WRKSRC}/doc/* ${DOCSDIR}
.endif

.include <bsd.port.mk>
