# Created by: mat
# $FreeBSD: devel/p5-DateTime-Calendar-Hebrew/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DateTime-Calendar-Hebrew
PORTVERSION=	0.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Dates in the Hebrew calendar

BUILD_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Event-Sunrise>=0:${PORTSDIR}/devel/p5-DateTime-Event-Sunrise
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		DateTime::Calendar::Hebrew.3

.include <bsd.port.mk>
