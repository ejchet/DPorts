# New ports collection makefile for:	p5-Net-Todoist
# Date created:		2010-11-06
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: net/p5-Net-Todoist/Makefile 321187 2013-06-18 13:49:02Z az $
#

PORTNAME=	Net-Todoist
PORTVERSION=	0.04
CATEGORIES=	net www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	Todoist API

RUN_DEPENDS=	p5-JSON-XS>=0:${PORTSDIR}/converters/p5-JSON-XS \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww

PERL_CONFIGURE=	yes

MAN3=		Net::Todoist.3

.include <bsd.port.mk>
