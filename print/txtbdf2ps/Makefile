# ex:ts=8
# Ports collection makefile for:	txtbdf2ps
# Date created:			Aug 10, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/print/txtbdf2ps/Makefile,v 1.11 2012/11/17 06:00:55 svnexp Exp $
#

PORTNAME=	txtbdf2ps
PORTVERSION=	0.7.1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE} \
		http://oldrus-ispell.sourceforge.net/
EXTRACT_SUFX=	.txt

MAINTAINER=	ak@FreeBSD.org
COMMENT=	Translator TXT + BDF to PS

PROJECTHOST=	ak-various-projects

PLIST_FILES=	bin/txtbdf2ps
USE_PERL5=	yes
EXTRACT_CMD=	${CP}
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	${WRKDIR}
NO_WRKSUBDIR=	yes
NO_BUILD=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/bin/perl|${PERL}|g' ${WRKSRC}/${DISTNAME}.txt

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME}.txt ${PREFIX}/bin/txtbdf2ps

.include <bsd.port.mk>
