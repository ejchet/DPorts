# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: misc/p5-Geo-Cache/Makefile 324054 2013-07-31 14:36:21Z az $

PORTNAME=	Geo-Cache
PORTVERSION=	0.11
CATEGORIES=	misc perl5 geography
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Object interface for GPS waypoints

RUN_DEPENDS=	p5-Time-modules>=0:${PORTSDIR}/devel/p5-Time-modules \
		p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Geo::Cache.3

.include <bsd.port.mk>
