# New ports collection makefile for:	cdif
# Date created:		July 22, 2000
# Whom:			Yoshiro MIHIRA <sanpei@sanpei.org>
#
# $NetBSD: Makefile,v 1.3 2000/08/27 02:46:07 jlam Exp $
# $FreeBSD: ports/textproc/cdif/Makefile,v 1.7 2012/11/17 06:01:52 svnexp Exp $
#

PORTNAME=		cdif
PORTVERSION=		1.19
CATEGORIES=		textproc
MASTER_SITES=		http://www.srekcah.org/~utashiro/perl/scripts/cdif/
EXTRACT_SUFX=		# empty

MAINTAINER=		sanpei@FreeBSD.org
COMMENT=		Word context diff

USE_PERL5=		yes

NO_WRKSUBDIR=		yes
NO_BUILD=		yes

do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${DISTDIR}/${DISTNAME} ${WRKSRC}/${DISTNAME}.dist

do-patch:
	${SED} -e '1s@/usr/local/bin/perl@${PERL}@' \
		< ${WRKSRC}/${DISTNAME}.dist > ${WRKSRC}/${DISTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME} ${PREFIX}/bin/cdif

.include <bsd.port.mk>
