# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD: www/p5-WWW-Scripter-Plugin-Ajax/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	WWW-Scripter-Plugin-Ajax
PORTVERSION=	0.09
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	WWW::Scripter plugin that provides the XMLHttpRequest object

RUN_DEPENDS=	p5-WWW-Scripter-Plugin-JavaScript>0:${PORTSDIR}/www/p5-WWW-Scripter-Plugin-JavaScript \
		p5-XML-DOM-Lite>0:${PORTSDIR}/textproc/p5-XML-DOM-Lite
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		WWW::Scripter::Plugin::Ajax.3

.include <bsd.port.mk>
