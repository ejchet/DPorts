# ex:ts=8
# New ports collection makefile for:	cwtext
# Date created:			Nov 16, 2001
# Whom:				ijliao
#
# $FreeBSD: ports/textproc/cwtext/Makefile,v 1.17 2012/11/17 06:01:53 svnexp Exp $
#

PORTNAME=	cwtext
PORTVERSION=	0.96
CATEGORIES=	textproc hamradio
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}%20${PORTVERSION}

MAINTAINER=	db@FreeBSD.org
COMMENT=	Morse Code Generator

USE_PYTHON=	yes
USE_GMAKE=	yes
MAKEFILE=	makefile
ALL_TARGET=	ALL

post-patch:
	@${REINPLACE_CMD} -e "s,^PREFIX,#PREFIX,g" \
		-e "s,gcc,${CC} ${CFLAGS},g" \
		-e "s,install -sc,${INSTALL_PROGRAM},g" ${WRKSRC}/${MAKEFILE}

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
