# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: www/p5-HTTP-Size/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	HTTP-Size
PORTVERSION=	1.13
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Get the byte size of an internet resource

BUILD_DEPENDS=	p5-libwww>0:${PORTSDIR}/www/p5-libwww \
		p5-URI>0:${PORTSDIR}/net/p5-URI \
		p5-HTML-SimpleLinkExtor>0:${PORTSDIR}/www/p5-HTML-SimpleLinkExtor
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	HTTP::Size.3

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
