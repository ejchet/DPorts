# Ports collection makefile for:	p5-Catalyst-Plugin-Authentication-Store-Htpasswd
# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: www/p5-Catalyst-Plugin-Authentication-Store-Htpasswd/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd
PORTVERSION=	0.020
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-0.02

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Use .htpasswd with Catalyst

BUILD_DEPENDS=	p5-Catalyst-Plugin-Authentication>=0.01:${PORTSDIR}/www/p5-Catalyst-Plugin-Authentication \
		p5-Authen-Htpasswd>=0.13:${PORTSDIR}/security/p5-Authen-Htpasswd
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=	Catalyst::Plugin::Authentication::Store::Htpasswd::User.3 \
	Catalyst::Plugin::Authentication::Store::Htpasswd.3 \
	Catalyst::Plugin::Authentication::Store::Htpasswd::Backend.3

.include <bsd.port.mk>
