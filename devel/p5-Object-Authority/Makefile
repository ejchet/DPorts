# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: devel/p5-Object-Authority/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Object-AUTHORITY
PORTVERSION=	0.004
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module that adds an AUTHORITY method to your class

BUILD_DEPENDS=	p5-Object-Role>=0:${PORTSDIR}/devel/p5-Object-Role
RUN_DEPENDS=	p5-Object-Role>=0:${PORTSDIR}/devel/p5-Object-Role
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

USES=		perl5
USE_PERL5=	configure

MAN3=	Object::AUTHORITY.3

.include <bsd.port.mk>
