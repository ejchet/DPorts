# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: net/p5-Net-Address-Ethernet/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Net-Address-Ethernet
PORTVERSION=	1.122
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Find hardware ethernet address

BUILD_DEPENDS=	p5-Env-Path>=0:${PORTSDIR}/devel/p5-Env-Path \
		p5-Net-Ifconfig-Wrapper>=0:${PORTSDIR}/net/p5-Net-Ifconfig-Wrapper \
		p5-Regexp-Common>=0:${PORTSDIR}/textproc/p5-Regexp-Common
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Test-Pod-Coverage

USES=		perl5
USE_PERL5=	configure

MAN3=		Net::Address::Ethernet.3

.include <bsd.port.mk>
