# New ports collection makefile for:	Net::STF::Client
# Date created:		03 Jan 2012
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Net-STF-Client/Makefile,v 1.5 2012/11/17 06:02:52 svnexp Exp $
#

PORTNAME=	Net-STF-Client
PORTVERSION=	1.01
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for STF Client

RUN_DEPENDS=	\
	p5-Class-Accessor-Lite>0:${PORTSDIR}/devel/p5-Class-Accessor-Lite \
	p5-Furl>0:${PORTSDIR}/www/p5-Furl \
	p5-libwww>0:${PORTSDIR}/www/p5-libwww \
	p5-URI>0:${PORTSDIR}/net/p5-URI
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	\
	p5-Test-Requires>0:${PORTSDIR}/devel/p5-Test-Requires \
	p5-Test-TCP>0:${PORTSDIR}/devel/p5-Test-TCP \
	p5-Test-Simple>0:${PORTSDIR}/devel/p5-Test-Simple \
	p5-Plack>0:${PORTSDIR}/www/p5-Plack

PERL_CONFIGURE=	yes

MAN3=	Net::STF::Bucket.3 \
	Net::STF::Client.3 \
	Net::STF::Object.3

.include <bsd.port.mk>
