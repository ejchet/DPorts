# Created by: Seamus Venasse <svenasse@polaris.ca>
# $FreeBSD: textproc/p5-Lingua-Preferred/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=		Lingua-Preferred
PORTVERSION=		0.2.4
CATEGORIES=		textproc perl5
MASTER_SITES=		CPAN
MASTER_SITE_SUBDIR=	CPAN:EDAVIS
PKGNAMEPREFIX=		p5-

MAINTAINER=		perl@FreeBSD.org
COMMENT=	Perl extension to choose a language

BUILD_DEPENDS=	p5-Log-TraceMessages>=0:${PORTSDIR}/devel/p5-Log-TraceMessages
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=			Lingua::Preferred.3

.include <bsd.port.mk>
