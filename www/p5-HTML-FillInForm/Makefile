# Created by: Alex Kapranoff <kapr@crosswinds.net>
# $FreeBSD: www/p5-HTML-FillInForm/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	HTML-FillInForm
PORTVERSION=	2.11
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 module for auto-filling HTML form fields from previous values

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-HTML-Parser>=3.26:${PORTSDIR}/www/p5-HTML-Parser
RUN_DEPENDS=	p5-HTML-Parser>=3.26:${PORTSDIR}/www/p5-HTML-Parser

INSTALL_TARGET=	pure_install
USES=		perl5
USE_PERL5=	configure

MAN3=		HTML::FillInForm.3

.include <bsd.port.mk>
