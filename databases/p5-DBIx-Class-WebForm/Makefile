# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: databases/p5-DBIx-Class-WebForm/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DBIx-Class-WebForm
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	CRUD methods for DBIx::Class

RUN_DEPENDS=	p5-DBIx-Class>=0:${PORTSDIR}/databases/p5-DBIx-Class \
		p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree \
		p5-Data-FormValidator>=0:${PORTSDIR}/textproc/p5-Data-FormValidator
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=	DBIx::Class::WebForm.3

.include <bsd.port.mk>
