# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: security/p5-Tree-Authz/Makefile 324175 2013-08-02 21:38:09Z mat $

PORTNAME=	Tree-Authz
PORTVERSION=	0.03
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Role-Based Access Control authorization scheme

BUILD_DEPENDS=	p5-Class-Data-Inheritable>=0:${PORTSDIR}/devel/p5-Class-Data-Inheritable \
		p5-Devel-Symdump>=0:${PORTSDIR}/devel/p5-Devel-Symdump \
		p5-Lingua-EN-Inflect-Number>=0:${PORTSDIR}/textproc/p5-Lingua-EN-Inflect-Number
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

MAN3=	Tree::Authz.3 Tree::Authz::Role.3

USES=		perl5
USE_PERL5=	modbuild

.include <bsd.port.mk>
