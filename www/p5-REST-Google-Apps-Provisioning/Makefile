# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: www/p5-REST-Google-Apps-Provisioning/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	REST-Google-Apps-Provisioning
PORTVERSION=	1.1.10
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SSCHNEID
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl library to Google\'s RESTful Apps API

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		REST::Google::Apps::Provisioning.3

.include <bsd.port.mk>
