# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: net/p5-Rose-URI/Makefile 324306 2013-08-06 08:50:49Z az $

PORTNAME=	Rose-URI
PORTVERSION=	1.00
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Easy and efficient manipulation of URI components

RUN_DEPENDS=	p5-Rose-Object>=0.854:${PORTSDIR}/devel/p5-Rose-Object \
		p5-URI>0:${PORTSDIR}/net/p5-URI
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Rose::URI.3

.include <bsd.port.mk>
