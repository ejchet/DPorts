# Created by: Mathieu Arnold <m@absolight.net>
# $FreeBSD: textproc/p5-YAPE-Regex-Explain/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	YAPE-Regex-Explain
PORTVERSION=	4.01
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GSULLIVAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Explanation of a Regular Expression

RUN_DEPENDS=	p5-YAPE-Regex>=0:${PORTSDIR}/textproc/p5-YAPE-Regex
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		YAPE::Regex::Explain.3

.include <bsd.port.mk>
