# Created by: mat
# $FreeBSD: devel/p5-DateTime-Format-IBeat/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DateTime-Format-IBeat
PORTVERSION=	0.16.1
DISTVERSION=	${PORTVERSION:C/\.(.)$/\1/}
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Format times in .beat notation

BUILD_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		DateTime::Format::IBeat.3

.include <bsd.port.mk>
