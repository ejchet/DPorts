# Created by: Zach Thompson <hideo@lastamericanempire.com>
# $FreeBSD: devel/p5-POE-XS-Loop-Poll/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	POE-XS-Loop-Poll
PORTVERSION=	1.000
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	XS implementation of POE::Loop, using poll(2)

BUILD_DEPENDS=	p5-POE-Test-Loops>=1.033:${PORTSDIR}/devel/p5-POE-Test-Loops \
		p5-POE>=1.003:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS=	p5-POE>=1.003:${PORTSDIR}/devel/p5-POE

USES=		perl5
USE_PERL5=	configure
CONFIGURE_SCRIPT+=	Makefile.PL --default

MAN3=	POE::XS::Loop::Poll.3

.include <bsd.port.mk>
