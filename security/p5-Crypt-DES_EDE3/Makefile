# Created by: jesper
# $FreeBSD: security/p5-Crypt-DES_EDE3/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Crypt-DES_EDE3
PORTVERSION=	0.01
PORTREVISION=	1
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 interface to a implementing 3-DES EDE encryption and decryption

BUILD_DEPENDS=	p5-Crypt-DES>=0:${PORTSDIR}/security/p5-Crypt-DES
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Crypt::DES_EDE3.3

.include <bsd.port.mk>
