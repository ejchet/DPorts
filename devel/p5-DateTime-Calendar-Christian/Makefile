# Created by: Mathieu Arnold <m@absolight.net>
# $FreeBSD: devel/p5-DateTime-Calendar-Christian/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DateTime-Calendar-Christian
PORTVERSION=	0.04
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Dates in the Christian calendar

BUILD_DEPENDS=	p5-DateTime-Calendar-Julian>=0:${PORTSDIR}/devel/p5-DateTime-Calendar-Julian
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		DateTime::Calendar::Christian.3

.include <bsd.port.mk>
