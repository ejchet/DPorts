# Created by: Lars Thegler <lars@thegler.dk>
# $FreeBSD: mail/p5-Email-Simple/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Email-Simple
PORTVERSION=	2.201
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Simple parsing of RFC2822 message format and headers

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Email-Date-Format>=0:${PORTSDIR}/mail/p5-Email-Date-Format
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Email::Simple.3 \
		Email::Simple::Creator.3 \
		Email::Simple::Header.3

.include <bsd.port.mk>
