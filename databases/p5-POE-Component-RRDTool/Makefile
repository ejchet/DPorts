# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: databases/p5-POE-Component-RRDTool/Makefile 324007 2013-07-31 06:54:09Z az $

PORTNAME=	POE-Component-RRDTool
PORTVERSION=	0.18
PORTREVISION=	4
CATEGORIES=	databases perl5 devel
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	POE interface to Round Robin Database Tools

BUILD_DEPENDS=	p5-POE>=0:${PORTSDIR}/devel/p5-POE \
		${LOCALBASE}/bin/rrdtool:${PORTSDIR}/databases/rrdtool
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure patch
CONFIGURE_ARGS=	</dev/null

MAN3=		POE::Component::RRDTool.3

post-patch:
	@${PERL} -pi -e 's/(\(\$$maj, \$$min, \$$sub\))/$$1; $$1/' \
		${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
