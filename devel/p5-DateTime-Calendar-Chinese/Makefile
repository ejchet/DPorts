# New ports collection makefile for:	p5-DateTime-Calendar-Chinese
# Date created:		2007-11-06
# Whom:			Masahiro Teramoto <markun@onohara.to>
#
# $FreeBSD: ports/devel/p5-DateTime-Calendar-Chinese/Makefile,v 1.4 2012/11/17 05:56:11 svnexp Exp $
#

PORTNAME=	DateTime-Calendar-Chinese
PORTVERSION=	1.00
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DMAKI
PKGNAMEPREFIX=	p5-

MAINTAINER=	markun@onohara.to
COMMENT=	Traditional Chinese Calendar Implementation

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-DateTime-Event-Chinese>=1.00:${PORTSDIR}/devel/p5-DateTime-Event-Chinese
RUN_DEPENDS=	p5-DateTime-Event-Chinese>=1.00:${PORTSDIR}/devel/p5-DateTime-Event-Chinese

PERL_CONFIGURE=	yes

MAN3=		DateTime::Calendar::Chinese.3

.include <bsd.port.mk>
