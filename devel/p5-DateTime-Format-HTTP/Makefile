# Created by: Mathieu Arnold <mat@FreeBSD.org>
# $FreeBSD: devel/p5-DateTime-Format-HTTP/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DateTime-Format-HTTP
PORTVERSION=	0.40
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	HTTP date conversion routines

BUILD_DEPENDS:=	${RUN_DEPENDS}
RUN_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww

USES=		perl5
USE_PERL5=	modbuild

MAN3=		DateTime::Format::HTTP.3

.include <bsd.port.mk>
