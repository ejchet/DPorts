# Created by: chinsan
# $FreeBSD: sysutils/p5-reslog/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	reslog
PORTVERSION=	3.16
PORTREVISION=	2
CATEGORIES=	sysutils perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Locale/IMACAT
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Reverse-resolve IP in Apache log files

RUN_DEPENDS=	p5-Compress-Bzip2>=0:${PORTSDIR}/archivers/p5-Compress-Bzip2 \
		p5-File-MMagic>=0:${PORTSDIR}/devel/p5-File-MMagic \
		p5-Term-ReadKey>=0:${PORTSDIR}/devel/p5-Term-ReadKey
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure
MAN1=		reslog.1

PLIST_FILES=	bin/reslog \
		%%SITE_PERL%%/%%PERL_ARCH%%/auto/reslog/.packlist
PLIST_DIRS=	%%SITE_PERL%%/%%PERL_ARCH%%/auto/reslog

.include <bsd.port.mk>
