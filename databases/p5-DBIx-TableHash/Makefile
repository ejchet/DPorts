# Created by: ijliao
# $FreeBSD: databases/p5-DBIx-TableHash/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DBIx-TableHash
CATEGORIES=	databases perl5
PORTVERSION=	1.05
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:CHTHORMAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Tie a hash to a MySQL table + SQL utils

BUILD_DEPENDS=	p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	DBIx::TableHash.3

.include <bsd.port.mk>
