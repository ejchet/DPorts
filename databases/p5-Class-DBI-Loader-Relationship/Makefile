# New ports collection makefile for:	p5-Class-DBI-Loader-Relationship
# Date created:				Apr 4 2004
# Whom:					Lars Thegler <lars@thegler.dk>
#
# $FreeBSD: databases/p5-Class-DBI-Loader-Relationship/Makefile 324352 2013-08-07 13:20:32Z az $

PORTNAME=	Class-DBI-Loader-Relationship
PORTVERSION=	1.3
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:CHUNZI
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Easier relationship specification in CDBI::L

BUILD_DEPENDS=	p5-Class-DBI-Loader>=0:${PORTSDIR}/databases/p5-Class-DBI-Loader \
		p5-Lingua-EN-Inflect-Number>=0:${PORTSDIR}/textproc/p5-Lingua-EN-Inflect-Number
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Class::DBI::Loader::Relationship.3

.include <bsd.port.mk>
