# ex:ts=8
# Ports collection makefile for:  translate
# Date created:                   Thu Jun 13, 2002
# Whom:                           Michael L. Hostbaek (mich@freebsdcluster.org)
#
# $FreeBSD: ports/misc/translate/Makefile,v 1.11 2012/11/17 05:59:45 svnexp Exp $
#

PORTNAME=	translate
PORTVERSION=	1.11
CATEGORIES=	misc
MASTER_SITES=	http://www.freebsdcluster.org/~mich/software/

MAINTAINER=	mich@FreeBSD.org
COMMENT=	Translates string using Babelfish

RUN_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww

USE_PERL5=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1

MAN1=		translate.1
PLIST_FILES=	bin/translate

.include <bsd.port.mk>
