# $FreeBSD: ports/comms/vrflash/Makefile,v 1.9 2012/11/17 05:55:02 svnexp Exp $

PORTNAME=	vrflash
PORTVERSION=	0.20
CATEGORIES=	comms
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=dinoex

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	Flash kernels and romdisks to the Agenda VR3

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
DOCS=		agenda-flashing-overview.txt troubleshooting.txt \
		pmon-protect-unprotect.txt usage.txt

do-install:
	${INSTALL_PROGRAM} -m 755 ${WRKSRC}/vrflash ${PREFIX}/bin/
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${i} ${DOCSDIR}/
.endfor
.endif

.include <bsd.port.mk>
