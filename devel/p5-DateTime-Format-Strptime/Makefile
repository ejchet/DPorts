# Created by: Mathieu Arnold
# $FreeBSD: devel/p5-DateTime-Format-Strptime/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DateTime-Format-Strptime
PORTVERSION=	1.54
PORTEPOCH=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Parse and format strp and strf time patterns

RUN_DEPENDS=	p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate \
		p5-DateTime-TimeZone>=0:${PORTSDIR}/devel/p5-DateTime-TimeZone \
		p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		DateTime::Format::Strptime.3

.include <bsd.port.mk>
