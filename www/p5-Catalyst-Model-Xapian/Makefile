# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: www/p5-Catalyst-Model-Xapian/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Catalyst-Model-Xapian
PORTVERSION=	0.06
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MRAMBERG
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Catalyst model for Search::Xapian

BUILD_DEPENDS=	p5-Catalyst-Runtime>=5.30:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Catalyst-Devel>=1.00:${PORTSDIR}/www/p5-Catalyst-Devel \
		p5-Data-Page>=0:${PORTSDIR}/databases/p5-Data-Page \
		p5-Search-Xapian>=1.2.7.0:${PORTSDIR}/databases/p5-Search-Xapian
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Catalyst::Model::Xapian.3 \
	Catalyst::Helper::Model::Xapian.3

.include <bsd.port.mk>
