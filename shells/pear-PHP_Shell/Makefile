# Ports collection makefile for:  pear-PHP_Shell
# Date created:			  05 August 2007
# Whom:				  Martin Wilke <miwi@FreeBSD.org>
#
# $FreeBSD: ports/shells/pear-PHP_Shell/Makefile,v 1.5 2012/11/17 06:01:23 svnexp Exp $
#

PORTNAME=	PHP_Shell
PORTVERSION=	0.3.2
CATEGORIES=	shells www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	An interactive PHP Shell

USE_PHP=	pcre tokenizer readline

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
