# Created by: TAKATSU Tomonari <tota@rtfm.jp>
# $FreeBSD: www/rubygem-scrubyt/Makefile 315382 2013-03-27 13:56:59Z tota $

PORTNAME=	scrubyt
PORTVERSION=	0.4.11
CATEGORIES=	www rubygems
MASTER_SITES=	RF

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Powerful web scraping toolkit written in Ruby

LICENSE=	GPLv2

RUN_DEPENDS=	rubygem-hpricot>=0.5:${PORTSDIR}/www/rubygem-hpricot \
		rubygem-mechanize>=0.6.3:${PORTSDIR}/www/rubygem-mechanize

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

post-patch:
	${REINPLACE_CMD} 's/0.4.1/${PORTVERSION}/' ${BUILD_WRKSRC}/${GEMFILES}spec

.include <bsd.port.mk>
