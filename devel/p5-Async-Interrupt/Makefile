# Created by: Mikhail T. <michael@fun-box.ru>
# $FreeBSD: devel/p5-Async-Interrupt/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Async-Interrupt
PORTVERSION=	1.10
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Allow C/XS libraries to interrupt perl asynchronously

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-common-sense>=0:${PORTSDIR}/devel/p5-common-sense
RUN_DEPENDS=	p5-common-sense>=0:${PORTSDIR}/devel/p5-common-sense

USES=		perl5
USE_PERL5=	configure

MAN3=		Async::Interrupt.3

.include <bsd.port.mk>
