# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: devel/pear-PHP_ParserGenerator/Makefile 314241 2013-03-15 02:46:41Z miwi $

PORTNAME=	PHP_ParserGenerator
PORTVERSION=	0.1.7
CATEGORIES=	devel www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Convert files from lemon parser to php5

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
