# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: www/p5-Catalyst-Authentication-Store-LDAP/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Catalyst-Authentication-Store-LDAP
PORTVERSION=	1.014
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Authentication from an LDAP Directory for Catalyst

BUILD_DEPENDS=	p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap \
		p5-Catalyst-Plugin-Authentication>=0.10003:${PORTSDIR}/www/p5-Catalyst-Plugin-Authentication
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-MockObject>=0:${PORTSDIR}/devel/p5-Test-MockObject \
		p5-Net-LDAP-Server-Test>=0:${PORTSDIR}/net/p5-Net-LDAP-Server-Test

USES=		perl5
USE_PERL5=	configure

MAN3=		Catalyst::Authentication::Store::LDAP.3 \
		Catalyst::Authentication::Store::LDAP::Backend.3 \
		Catalyst::Authentication::Store::LDAP::User.3

.include <bsd.port.mk>
