# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: devel/p5-Module-Starter-Plugin-SimpleStore/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	Module-Starter-Plugin-SimpleStore
PORTVERSION=	0.144
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Provide methods of retrieving templates for Module::Starter

BUILD_DEPENDS=	p5-Module-Starter>=1.32:${PORTSDIR}/devel/p5-Module-Starter

USES=		perl5
USE_PERL5=	configure

MAN3=	Module::Starter::Plugin::InlineStore.3 \
	Module::Starter::Plugin::DirStore.3 \
	Module::Starter::Plugin::ModuleStore.3

.include <bsd.port.mk>
