# Created by: Brian Candler <B.Candler@pobox.com>
# $FreeBSD: print/pmw/Makefile 321320 2013-06-19 20:12:38Z linimon $

PORTNAME=	pmw
PORTVERSION=	4.12
CATEGORIES=	print audio
MASTER_SITES=	ftp://ftp.univie.ac.at/applications/www.quercite.com/ \
		http://www.quercite.com/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	High quality music typesetting program

GNU_CONFIGURE=	yes
ALL_TARGET=	build

MAN1=		pmw.1

PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_FILES=	pkg-message

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in ChangeLog spec.pdf
	${INSTALL_MAN} ${WRKSRC}/doc/${file} ${DOCSDIR}
.endfor
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
