# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: devel/p5-POE-Component-JobQueue/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	POE-Component-JobQueue
PORTVERSION=	0.5710
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0+$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	POE component to manage queues and worker pools

BUILD_DEPENDS=	p5-POE>=0:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		POE::Component::JobQueue.3

.include <bsd.port.mk>
