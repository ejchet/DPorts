# New ports collection makefile for:	Authen-DecHpwd
# Date created:				01 Jun 2008
# Whom:					brix@FreeBSD.org
#
# $FreeBSD: ports/security/p5-Authen-DecHpwd/Makefile,v 1.7 2012/11/17 06:01:10 svnexp Exp $
#

PORTNAME=	Authen-DecHpwd
PORTVERSION=	2.006
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	brix@FreeBSD.org
COMMENT=	Perl module for DEC VMS password hashing

BUILD_DEPENDS=	p5-Scalar-String>=0:${PORTSDIR}/devel/p5-Scalar-String \
		p5-Data-Integer>=0:${PORTSDIR}/devel/p5-Data-Integer \
		p5-Digest-CRC>=0:${PORTSDIR}/security/p5-Digest-CRC
RUN_DEPENDS:=	${BUILD_DEPENDS}

LICENSE=	GPLv2
PERL_MODBUILD=	yes

MAN3=	Authen::DecHpwd.3

.include <bsd.port.mk>
