# Created by: andrew@scoop.co.nz
# $FreeBSD: databases/p5-Class-DBI-mysql/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	Class-DBI-mysql
PORTVERSION=	1.00
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Extensions to Class::DBI for MySQL

BUILD_DEPENDS=	p5-Class-DBI>=0:${PORTSDIR}/databases/p5-Class-DBI \
		p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Class::DBI::mysql.3

.include <bsd.port.mk>
