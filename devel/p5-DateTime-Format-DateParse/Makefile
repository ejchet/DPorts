# Created by: Sergei Vyshenski <svysh@pn.sinp.msu.ru>
# $FreeBSD: devel/p5-DateTime-Format-DateParse/Makefile 313272 2013-03-02 16:38:36Z miwi $

PORTNAME=	DateTime-Format-DateParse
PORTVERSION=	0.05
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	DateTime
PKGNAMEPREFIX=	p5-

MAINTAINER=	svysh.fbsd@gmail.com
COMMENT=	This module is a compatibility wrapper around Date::Parse

BUILD_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-TimeDate>=0:${PORTSDIR}/devel/p5-TimeDate
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=	DateTime::Format::DateParse.3

.include <bsd.port.mk>
