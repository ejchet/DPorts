# Created by: Andrej Zverev <az@FreeBSD.org>
# $FreeBSD: net/p5-SOAP-Transport-TCP/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	SOAP-Transport-TCP
PORTVERSION=	0.715
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MKUTTER
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	TCP Transport Support for SOAP::Lite

RUN_DEPENDS=	p5-SOAP-Lite>=0.714:${PORTSDIR}/net/p5-SOAP-Lite
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=	SOAP::Transport::TCP.3

.include <bsd.port.mk>
