# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: devel/p5-Class-Accessor-Fast-XS/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Class-Accessor-Fast-XS
PORTVERSION=	0.04
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	XS replacement for Class::Accessor::Fast

BUILD_DEPENDS=	p5-AutoXS-Header>=0.03:${PORTSDIR}/devel/p5-AutoXS-Header \
		p5-Class-Accessor>0:${PORTSDIR}/devel/p5-Class-Accessor
RUN_DEPENDS=	p5-Class-Accessor>0:${PORTSDIR}/devel/p5-Class-Accessor

USES=		perl5
USE_PERL5=	configure

MAN3=		Class::Accessor::Fast::XS.3

.include <bsd.port.mk>
