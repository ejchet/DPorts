# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: dns/p5-DNS-EasyDNS/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DNS-EasyDNS
PORTVERSION=	0.04
CATEGORIES=	dns perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Update your EasyDNS dynamic DNS entries

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	DNS::EasyDNS.3

USES=		perl5
USE_PERL5=	configure

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
