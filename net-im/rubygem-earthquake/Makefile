# Created by: Koichiro IWAO <meta+ports@vmeta.jp>
# $FreeBSD: net-im/rubygem-earthquake/Makefile 321350 2013-06-20 04:21:07Z swills $

PORTNAME=	earthquake
PORTVERSION=	1.0.0
CATEGORIES=	net-im rubygems
MASTER_SITES=	RG

MAINTAINER=	meta+ports@vmeta.jp
COMMENT=	Terminal based Twitter client with Twitter streaming API

BUILD_DEPENDS=	rubygem-twitter-stream>=0.1.15:${PORTSDIR}/net/rubygem-twitter-stream \
		rubygem-notify>=0.2.1:${PORTSDIR}/devel/rubygem-notify \
		rubygem-i18n>=0.6.0:${PORTSDIR}/devel/rubygem-i18n \
		rubygem-activesupport>=3.2.1:${PORTSDIR}/devel/rubygem-activesupport \
		rubygem-awesome_print>=1.0.2:${PORTSDIR}/devel/rubygem-awesome_print \
		rubygem-launchy>=2.0.5:${PORTSDIR}/devel/rubygem-launchy \
		rubygem-oauth>=0.4.5:${PORTSDIR}/net/rubygem-oauth \
		rubygem-jugyo-twitter_oauth>=0.5.0.pre5:${PORTSDIR}/security/rubygem-jugyo-twitter_oauth \
		rubygem-slop>=2.4.4:${PORTSDIR}/devel/rubygem-slop
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_RUBY=	yes
USE_RUBYGEMS=	yes
USE_RAKE=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/earthquake

.include <bsd.port.mk>
