# New ports collection makefile for:	p5-FreeBSD-Ports
# Date created:				12 September 2001
# Whom:					Tom Hukins <tom@FreeBSD.org>
#
# $FreeBSD: ports-mgmt/p5-FreeBSD-Ports/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	FreeBSD-Ports
PORTVERSION=	0.04
CATEGORIES=	ports-mgmt perl5
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	tom
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl modules for parsing FreeBSD's Ports INDEX file

USE_BZIP2=	yes

USES=		perl5
USE_PERL5=	configure
MAN3=		FreeBSD::Ports::Port.3 \
		FreeBSD::Ports.3
.include <bsd.port.mk>
