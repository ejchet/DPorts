# Created by: janos.mohacsi@bsd.hu
# $FreeBSD: ports/benchmarks/blogbench/Makefile,v 1.5 2013/01/09 20:04:24 svnexp Exp $

PORTNAME=	blogbench
PORTVERSION=	1.1
CATEGORIES=	benchmarks
MASTER_SITES=	http://download.pureftpd.org/pub/blogbench/ \
		ftp://ftp.pureftpd.org/pub/pure-ftpd/misc/blogbench/

MAINTAINER=	jmohacsi@bsd.hu
COMMENT=	Performance Test of Filesystem I/O

GNU_CONFIGURE=	yes
USE_BZIP2=	yes

MAN8=		blogbench.8
PLIST_FILES=	bin/blogbench
PORTDOCS=	README

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
