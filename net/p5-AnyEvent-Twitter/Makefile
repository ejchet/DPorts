# New ports collection makefile for:	AnyEvent::Twitter
# Date created:				07 Nov 2009
# Whom:					Sahil Tandon <sahil@tandon.net>
#
# $FreeBSD: net/p5-AnyEvent-Twitter/Makefile 321187 2013-06-18 13:49:02Z az $
#

PORTNAME=	AnyEvent-Twitter
PORTVERSION=	0.62
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sahil@FreeBSD.org
COMMENT=	Implementation of the Twitter API for AnyEvent

BUILD_DEPENDS=	p5-AnyEvent>=5.34:${PORTSDIR}/devel/p5-AnyEvent \
		p5-AnyEvent-HTTP>=2.12:${PORTSDIR}/www/p5-AnyEvent-HTTP \
		p5-JSON>=2.53:${PORTSDIR}/converters/p5-JSON \
		p5-Net-OAuth>=0.27:${PORTSDIR}/net/p5-Net-OAuth \
		p5-URI>=1.58:${PORTSDIR}/net/p5-URI

RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		AnyEvent::Twitter.3

.include <bsd.port.mk>
