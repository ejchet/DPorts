# New ports collection makefile for:	cons
# Date created:		11 December 1998
# Whom:			rv@gnu.org
#
# $FreeBSD: devel/cons/Makefile 321187 2013-06-18 13:49:02Z az $
#

PORTNAME=	cons
PORTVERSION=	2.2.0
PORTREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	http://www.dsmit.com/cons/stable/ \
		http://www.gnu.org/software/cons/stable/ \
		ftp://ftp.gnu.org/pub/gnu/cons/ \
		http://www.baldmt.com/cons/stable/
EXTRACT_SUFX=	.tgz

MAINTAINER=	rv@gnu.org
COMMENT=	A Perl-based Make Replacement

USE_PERL5=	yes
NO_BUILD=	yes
PLIST_SUB=	CONS_VER=${PORTVERSION}

MANCOMPRESSED=	yes
MAN1=		cons.1
DOCS=		CHANGES COPYING COPYRIGHT INSTALL MANIFEST README RELEASE \
		cons.html TODO
DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}-${PORTVERSION}

.include <bsd.port.pre.mk>

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cons ${PREFIX}/bin/cons
	${INSTALL_MAN} ${WRKSRC}/cons.1.gz ${PREFIX}/man/man1/cons.1.gz
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for f in ${DOCS}
	${INSTALL} -c ${WRKSRC}/$f ${DOCSDIR}
.endfor
.endif

.include <bsd.port.post.mk>
