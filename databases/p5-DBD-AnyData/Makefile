# ex:ts=8
# Created by: ijlioa
# $FreeBSD: databases/p5-DBD-AnyData/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DBD-AnyData
PORTVERSION=	0.110
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	DBI access to XML, CSV, and other formats

BUILD_DEPENDS=	p5-AnyData>=0.07:${PORTSDIR}/devel/p5-AnyData \
		p5-DBI>1:${PORTSDIR}/databases/p5-DBI \
		p5-SQL-Statement>1:${PORTSDIR}/databases/p5-SQL-Statement
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	DBD::AnyData.3

.include <bsd.port.mk>
